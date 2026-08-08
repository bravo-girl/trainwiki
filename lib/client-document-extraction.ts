import { unzipSync } from "fflate";

export const MAX_CHAT_ATTACHMENTS = 5;
export const MAX_ATTACHMENT_BYTES = 8 * 1024 * 1024;
export const MAX_ATTACHMENT_TEXT_CHARS = 12_000;

export type ExtractedChatAttachment = {
  filename: string;
  mediaType: string;
  rawSha256: string;
  text: string;
};

const MEDIA_TYPES: Record<string, string> = {
  md: "text/markdown",
  pdf: "application/pdf",
  html: "text/html",
  htm: "text/html",
  docx: "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  xlsx: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
};

function extension(filename: string) {
  return filename.split(".").pop()?.toLowerCase() ?? "";
}

function cleanText(value: string) {
  return value
    .normalize("NFKC")
    .replace(/\u0000/g, "")
    .replace(/[ \t]+\n/g, "\n")
    .replace(/\n{3,}/g, "\n\n")
    .replace(/[ \t]{2,}/g, " ")
    .trim()
    .slice(0, MAX_ATTACHMENT_TEXT_CHARS);
}

function xmlText(value: string, paragraphTags: string[]) {
  const document = new DOMParser().parseFromString(value, "application/xml");
  if (document.querySelector("parsererror")) throw new Error("Ungültiges Office-Dokument.");
  const paragraphs = paragraphTags.flatMap((tag) =>
    Array.from(document.getElementsByTagName(tag)).map((node) => node.textContent ?? ""),
  );
  return cleanText(paragraphs.join("\n"));
}

function decodeZipEntry(entries: Record<string, Uint8Array>, name: string) {
  const bytes = entries[name];
  return bytes ? new TextDecoder().decode(bytes) : "";
}

function extractDocx(bytes: Uint8Array) {
  const entries = unzipSync(bytes);
  const documentXml = decodeZipEntry(entries, "word/document.xml");
  if (!documentXml) throw new Error("DOCX enthält keinen lesbaren Dokumenttext.");
  return xmlText(documentXml, ["w:p"]);
}

function extractXlsx(bytes: Uint8Array) {
  const entries = unzipSync(bytes);
  const sharedXml = decodeZipEntry(entries, "xl/sharedStrings.xml");
  const shared = sharedXml
    ? Array.from(new DOMParser().parseFromString(sharedXml, "application/xml").getElementsByTagName("si"))
        .map((node) => node.textContent ?? "")
    : [];
  const sheets = Object.keys(entries)
    .filter((name) => /^xl\/worksheets\/sheet\d+\.xml$/i.test(name))
    .sort((left, right) => left.localeCompare(right, undefined, { numeric: true }));
  const lines: string[] = [];
  for (const sheet of sheets) {
    const document = new DOMParser().parseFromString(decodeZipEntry(entries, sheet), "application/xml");
    for (const row of Array.from(document.getElementsByTagName("row"))) {
      const values = Array.from(row.getElementsByTagName("c")).map((cell) => {
        const value = cell.getElementsByTagName("v")[0]?.textContent ?? "";
        return cell.getAttribute("t") === "s" && /^\d+$/.test(value)
          ? shared[Number(value)] ?? ""
          : value;
      });
      if (values.some(Boolean)) lines.push(values.join(" | "));
    }
  }
  const text = cleanText(lines.join("\n"));
  if (!text) throw new Error("XLSX enthält keinen lesbaren Zellinhalt.");
  return text;
}

function extractHtml(value: string) {
  const document = new DOMParser().parseFromString(value, "text/html");
  document.querySelectorAll("script,style,noscript,template").forEach((node) => node.remove());
  return cleanText(document.body.textContent ?? "");
}

async function extractPdf(bytes: Uint8Array) {
  const pdfjs = await import("pdfjs-dist/legacy/build/pdf.mjs");
  pdfjs.GlobalWorkerOptions.workerSrc = new URL(
    "pdfjs-dist/legacy/build/pdf.worker.mjs",
    import.meta.url,
  ).toString();
  const document = await pdfjs.getDocument({ data: bytes }).promise;
  const pages: string[] = [];
  try {
    for (let pageNumber = 1; pageNumber <= document.numPages; pageNumber += 1) {
      const page = await document.getPage(pageNumber);
      const content = await page.getTextContent();
      pages.push(
        content.items
          .map((item) => ("str" in item ? item.str : ""))
          .filter(Boolean)
          .join(" "),
      );
      if (pages.join("\n").length >= MAX_ATTACHMENT_TEXT_CHARS) break;
    }
  } finally {
    await document.destroy();
  }
  return cleanText(pages.join("\n\n"));
}

async function sha256(bytes: Uint8Array) {
  const digest = await crypto.subtle.digest("SHA-256", bytes);
  return Array.from(new Uint8Array(digest), (value) => value.toString(16).padStart(2, "0")).join("");
}

export async function extractChatAttachment(file: File): Promise<ExtractedChatAttachment> {
  const suffix = extension(file.name);
  const mediaType = MEDIA_TYPES[suffix];
  if (!mediaType) throw new Error(`${file.name}: Erlaubt sind MD, PDF, HTML, DOCX und XLSX.`);
  if (file.size <= 0 || file.size > MAX_ATTACHMENT_BYTES) {
    throw new Error(`${file.name}: Die Datei darf höchstens 8 MB groß sein.`);
  }
  const bytes = new Uint8Array(await file.arrayBuffer());
  let text: string;
  if (suffix === "pdf") text = await extractPdf(bytes);
  else if (suffix === "docx") text = extractDocx(bytes);
  else if (suffix === "xlsx") text = extractXlsx(bytes);
  else {
    const decoded = new TextDecoder("utf-8", { fatal: false }).decode(bytes);
    text = suffix === "html" || suffix === "htm" ? extractHtml(decoded) : cleanText(decoded);
  }
  if (!text) throw new Error(`${file.name}: Kein lesbarer Text gefunden.`);
  return { filename: file.name.slice(0, 255), mediaType, rawSha256: await sha256(bytes), text };
}
