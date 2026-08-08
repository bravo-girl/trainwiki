export interface ChatExchange {
  question: string;
  answer: string;
}

export type ChatExportFormat = "md" | "html";

export interface ChatExportOptions {
  /** Visible document title. */
  title?: string;
  /** Optional Date or ISO timestamp used in the document metadata. */
  generatedAt?: Date | string;
  /** File name without an extension. */
  fileName?: string;
}

export interface PreparedChatExport {
  format: ChatExportFormat;
  content: string;
  mimeType: string;
  fileName: string;
}

const DEFAULT_TITLE = "Chat-Export";

function escapeHtml(value: string): string {
  return value
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#39;");
}

function normalizeExchanges(
  exchanges: readonly ChatExchange[],
): readonly ChatExchange[] {
  if (!Array.isArray(exchanges) || exchanges.length === 0) {
    throw new RangeError("Mindestens ein Frage-Antwort-Paar ist erforderlich.");
  }

  return exchanges.map((exchange, index) => {
    if (
      !exchange ||
      typeof exchange.question !== "string" ||
      typeof exchange.answer !== "string"
    ) {
      throw new TypeError(
        `Ungültiges Frage-Antwort-Paar an Position ${index + 1}.`,
      );
    }

    return {
      question: exchange.question.trim(),
      answer: exchange.answer.trim(),
    };
  });
}

function normalizeDate(value: Date | string | undefined): string {
  const date = value instanceof Date ? value : new Date(value ?? Date.now());
  if (Number.isNaN(date.getTime())) {
    throw new TypeError("generatedAt muss ein gültiger Zeitpunkt sein.");
  }
  return date.toISOString();
}

function safeFileBase(value: string): string {
  const withoutKnownExtension = value.replace(/\.(?:md|html)$/i, "");
  const safe = withoutKnownExtension
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-zA-Z0-9_-]+/g, "-")
    .replace(/^-+|-+$/g, "")
    .slice(0, 80);
  return safe || "chat-export";
}

function safeLinkTarget(value: string): string | null {
  const trimmed = value.trim();
  try {
    const parsed = new URL(trimmed);
    if (parsed.protocol === "https:" || parsed.protocol === "http:") {
      return parsed.href;
    }
  } catch {
    // Invalid and relative URLs stay plain text in the standalone export.
  }
  return null;
}

function renderInlineMarkdown(value: string): string {
  const tokenPattern = /(`[^`\n]+`|\*\*[^*\n]+\*\*|\[[^\]\n]+\]\([^\s)]+\))/g;
  let result = "";
  let cursor = 0;

  for (const match of value.matchAll(tokenPattern)) {
    const index = match.index ?? 0;
    result += escapeHtml(value.slice(cursor, index));
    const token = match[0];

    if (token.startsWith("`")) {
      result += `<code>${escapeHtml(token.slice(1, -1))}</code>`;
    } else if (token.startsWith("**")) {
      result += `<strong>${escapeHtml(token.slice(2, -2))}</strong>`;
    } else {
      const link = /^\[([^\]]+)\]\(([^)]+)\)$/.exec(token);
      const label = link?.[1] ?? token;
      const target = link ? safeLinkTarget(link[2]) : null;
      result += target
        ? `<a href="${escapeHtml(target)}" rel="noopener noreferrer">${escapeHtml(label)}</a>`
        : escapeHtml(label);
    }

    cursor = index + token.length;
  }

  return result + escapeHtml(value.slice(cursor));
}

function isBlockStart(line: string): boolean {
  return (
    /^\s*$/.test(line) ||
    /^```/.test(line) ||
    /^#{1,6}\s+/.test(line) ||
    /^\s*[-+*]\s+/.test(line) ||
    /^\s*\d+[.)]\s+/.test(line) ||
    /^\s*>\s?/.test(line) ||
    /^\s*(?:---+|___+|\*\*\*+)\s*$/.test(line)
  );
}

/**
 * Render the small, common Markdown subset needed for a readable export.
 * Input HTML is always escaped and links are restricted to http(s).
 */
function renderSafeMarkdown(markdown: string): string {
  const lines = markdown.replace(/\r\n?/g, "\n").split("\n");
  const blocks: string[] = [];

  for (let index = 0; index < lines.length; ) {
    const line = lines[index];
    if (/^\s*$/.test(line)) {
      index += 1;
      continue;
    }

    if (/^```/.test(line)) {
      const code: string[] = [];
      index += 1;
      while (index < lines.length && !/^```\s*$/.test(lines[index])) {
        code.push(lines[index]);
        index += 1;
      }
      if (index < lines.length) index += 1;
      blocks.push(`<pre><code>${escapeHtml(code.join("\n"))}</code></pre>`);
      continue;
    }

    const heading = /^(#{1,6})\s+(.+)$/.exec(line);
    if (heading) {
      const level = heading[1].length;
      blocks.push(`<h${level}>${renderInlineMarkdown(heading[2])}</h${level}>`);
      index += 1;
      continue;
    }

    if (/^\s*[-+*]\s+/.test(line)) {
      const items: string[] = [];
      while (index < lines.length) {
        const item = /^\s*[-+*]\s+(.+)$/.exec(lines[index]);
        if (!item) break;
        items.push(`<li>${renderInlineMarkdown(item[1])}</li>`);
        index += 1;
      }
      blocks.push(`<ul>${items.join("")}</ul>`);
      continue;
    }

    if (/^\s*\d+[.)]\s+/.test(line)) {
      const items: string[] = [];
      while (index < lines.length) {
        const item = /^\s*\d+[.)]\s+(.+)$/.exec(lines[index]);
        if (!item) break;
        items.push(`<li>${renderInlineMarkdown(item[1])}</li>`);
        index += 1;
      }
      blocks.push(`<ol>${items.join("")}</ol>`);
      continue;
    }

    if (/^\s*>\s?/.test(line)) {
      const quote: string[] = [];
      while (index < lines.length) {
        const quotedLine = /^\s*>\s?(.*)$/.exec(lines[index]);
        if (!quotedLine) break;
        quote.push(renderInlineMarkdown(quotedLine[1]));
        index += 1;
      }
      blocks.push(`<blockquote>${quote.join("<br>")}</blockquote>`);
      continue;
    }

    if (/^\s*(?:---+|___+|\*\*\*+)\s*$/.test(line)) {
      blocks.push("<hr>");
      index += 1;
      continue;
    }

    const paragraph: string[] = [];
    while (index < lines.length && !isBlockStart(lines[index])) {
      paragraph.push(renderInlineMarkdown(lines[index]));
      index += 1;
    }
    blocks.push(`<p>${paragraph.join("<br>")}</p>`);
  }

  return blocks.join("\n");
}

export function createMarkdownExport(
  exchanges: readonly ChatExchange[],
  options: ChatExportOptions = {},
): string {
  const normalized = normalizeExchanges(exchanges);
  const title = options.title?.trim() || DEFAULT_TITLE;
  const generatedAt = normalizeDate(options.generatedAt);
  const sections = normalized.map(
    (exchange, index) =>
      [
        `## Frage ${index + 1}`,
        "",
        exchange.question,
        "",
        `## Antwort ${index + 1}`,
        "",
        exchange.answer,
      ].join("\n"),
  );

  return [
    `# ${title}`,
    "",
    `Exportiert: ${generatedAt}`,
    "",
    sections.join("\n\n---\n\n"),
    "",
  ].join("\n");
}

function createStandaloneDocument(
  exchanges: readonly ChatExchange[],
  options: ChatExportOptions,
  printable: boolean,
): string {
  const normalized = normalizeExchanges(exchanges);
  const title = options.title?.trim() || DEFAULT_TITLE;
  const generatedAt = normalizeDate(options.generatedAt);
  const articles = normalized
    .map(
      (exchange, index) => `
      <article class="exchange">
        <section aria-labelledby="question-${index + 1}">
          <h2 id="question-${index + 1}">Frage ${index + 1}</h2>
          <div class="content">${renderSafeMarkdown(exchange.question)}</div>
        </section>
        <section aria-labelledby="answer-${index + 1}">
          <h2 id="answer-${index + 1}">Antwort ${index + 1}</h2>
          <div class="content">${renderSafeMarkdown(exchange.answer)}</div>
        </section>
      </article>`,
    )
    .join("\n");

  return `<!doctype html>
<html lang="de">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>${escapeHtml(title)}</title>
  <style>
    :root { color-scheme: light; font-family: system-ui, sans-serif; line-height: 1.55; }
    * { box-sizing: border-box; }
    body { margin: 0; color: #172033; background: #fff; }
    main { width: min(100% - 2rem, 48rem); margin: 0 auto; padding: 2rem 0 4rem; }
    h1 { margin: 0; font-size: 1.65rem; }
    .meta { margin: .4rem 0 2rem; color: #5b6474; font-size: .82rem; }
    .exchange { padding: 0 0 1.6rem; margin: 0 0 1.6rem; border-bottom: 1px solid #dfe3ea; break-inside: avoid; }
    .exchange:last-child { border-bottom: 0; }
    section + section { margin-top: 1.35rem; }
    h2 { margin: 0 0 .45rem; color: #445069; font-size: .75rem; letter-spacing: .08em; text-transform: uppercase; }
    .content > :first-child { margin-top: 0; }
    .content > :last-child { margin-bottom: 0; }
    pre { overflow-wrap: anywhere; white-space: pre-wrap; padding: .85rem; border-radius: .5rem; background: #f3f5f8; }
    code { font-family: ui-monospace, monospace; font-size: .92em; }
    :not(pre) > code { padding: .1em .3em; border-radius: .25rem; background: #f3f5f8; }
    blockquote { margin-left: 0; padding-left: 1rem; border-left: 3px solid #c5cad3; color: #465064; }
    a { color: #1557b0; overflow-wrap: anywhere; }
    @page { margin: 16mm; }
    @media print { main { width: 100%; padding: 0; } a { color: inherit; text-decoration: underline; } }
  </style>
</head>
<body${printable ? ' data-purpose="print"' : ""}>
  <main>
    <header>
      <h1>${escapeHtml(title)}</h1>
      <p class="meta">Exportiert: <time datetime="${escapeHtml(generatedAt)}">${escapeHtml(generatedAt)}</time></p>
    </header>
    ${articles}
  </main>
</body>
</html>`;
}

export function createHtmlExport(
  exchanges: readonly ChatExchange[],
  options: ChatExportOptions = {},
): string {
  return createStandaloneDocument(exchanges, options, false);
}

export function prepareChatExport(
  exchanges: readonly ChatExchange[],
  format: ChatExportFormat,
  options: ChatExportOptions = {},
): PreparedChatExport {
  const baseName = safeFileBase(options.fileName || options.title || DEFAULT_TITLE);

  if (format === "md") {
    return {
      format,
      content: createMarkdownExport(exchanges, options),
      mimeType: "text/markdown;charset=utf-8",
      fileName: `${baseName}.md`,
    };
  }
  if (format === "html") {
    return {
      format,
      content: createHtmlExport(exchanges, options),
      mimeType: "text/html;charset=utf-8",
      fileName: `${baseName}.html`,
    };
  }
  throw new TypeError(`Nicht unterstütztes Exportformat: ${String(format)}`);
}

/**
 * Download a Markdown or standalone HTML export.
 */
export function downloadChatExport(
  exchanges: readonly ChatExchange[],
  format: ChatExportFormat,
  options: ChatExportOptions = {},
): PreparedChatExport {
  const prepared = prepareChatExport(exchanges, format, options);
  if (typeof window === "undefined" || typeof document === "undefined") {
    throw new Error("Downloads sind nur im Browser verfügbar.");
  }

  const blob = new Blob([prepared.content], { type: prepared.mimeType });
  const objectUrl = URL.createObjectURL(blob);
  const anchor = document.createElement("a");
  anchor.href = objectUrl;
  anchor.download = prepared.fileName;
  anchor.hidden = true;
  (document.body || document.documentElement).append(anchor);
  anchor.click();
  anchor.remove();
  window.setTimeout(() => URL.revokeObjectURL(objectUrl), 0);
  return prepared;
}

export function downloadExchange(
  exchange: ChatExchange,
  format: ChatExportFormat,
  options: ChatExportOptions = {},
): PreparedChatExport {
  return downloadChatExport([exchange], format, options);
}

export function downloadSession(
  exchanges: readonly ChatExchange[],
  format: ChatExportFormat,
  options: ChatExportOptions = {},
): PreparedChatExport {
  return downloadChatExport(exchanges, format, options);
}
