const HTTP_PROTOCOLS = new Set(["http:", "https:"]);
const CONTROL_CHARACTERS = /[\u0000-\u001f\u007f]/;
const FRONTMATTER = /^---\n[\s\S]*?\n---(?:\n|$)/;
const LEADING_H1 = /^(?:[ \t]*\n)*#[ \t]+[^\n]*(?:\n+|$)/;

function hasAmbiguousHttpPath(candidate: string): boolean {
  if (candidate.includes("\\")) return true;
  const match = /^[a-z][a-z0-9+.-]*:\/\/[^/?#]*([^?#]*)/i.exec(candidate);
  const rawPath = match?.[1] ?? "";
  return rawPath
    .split("/")
    .some((segment) => [".", ".."].includes(segment.replace(/%2e/gi, ".")));
}

export type SourceIdentityType =
  | "canonical_url"
  | "normalized_sha256"
  | "raw_sha256";

const asBytes = (value: string | Uint8Array) =>
  typeof value === "string" ? new TextEncoder().encode(value) : value;

export async function sha256Hex(value: string | Uint8Array): Promise<string> {
  const bytes = asBytes(value);
  const buffer = new ArrayBuffer(bytes.byteLength);
  new Uint8Array(buffer).set(bytes);
  const digest = await crypto.subtle.digest("SHA-256", buffer);
  return Array.from(new Uint8Array(digest), (byte) =>
    byte.toString(16).padStart(2, "0"),
  ).join("");
}

/**
 * Normalize only URL syntax that cannot change the addressed HTTP resource.
 * Path spelling, trailing slashes, and query order/values remain untouched.
 */
export function normalizeSourceUrl(value: unknown): string | undefined {
  if (typeof value !== "string") return undefined;

  const candidate = value.trim();
  if (
    !candidate ||
    candidate.length > 2_048 ||
    CONTROL_CHARACTERS.test(candidate) ||
    hasAmbiguousHttpPath(candidate)
  ) {
    return undefined;
  }

  try {
    const url = new URL(candidate);
    if (
      !HTTP_PROTOCOLS.has(url.protocol) ||
      !url.hostname ||
      url.username ||
      url.password
    ) {
      return undefined;
    }

    url.hash = "";
    return url.href;
  } catch {
    return undefined;
  }
}

/**
 * Produce the stable content payload used for cross-format deduplication.
 * Source metadata and the generated, filename-derived H1 are provenance, not
 * content identity. Section headings and all body text remain significant.
 */
export function normalizeMarkdownContent(markdown: string): string {
  let normalized = markdown
    .replace(/^\uFEFF/, "")
    .replace(/\r\n?/g, "\n")
    .normalize("NFKC");

  if (FRONTMATTER.test(normalized)) {
    normalized = normalized.replace(FRONTMATTER, "");
  }
  normalized = normalized.replace(LEADING_H1, "");

  const lines = normalized.split("\n").map((line) =>
    line
      .replace(/\t/g, " ")
      .replace(/[ ]+$/g, ""),
  );
  const compact: string[] = [];
  let blankLines = 0;
  for (const line of lines) {
    if (line === "") {
      blankLines += 1;
      if (blankLines <= 2) compact.push(line);
    } else {
      blankLines = 0;
      compact.push(line);
    }
  }

  const content = compact.join("\n").trim();
  return content ? `${content}\n` : "";
}

export const normalizedMarkdownSha256 = (markdown: string) =>
  sha256Hex(normalizeMarkdownContent(markdown));

export async function sourceIdentityHash(
  type: SourceIdentityType,
  value: string,
): Promise<string> {
  if (type === "raw_sha256" || type === "normalized_sha256") {
    const digest = value.trim().toLowerCase();
    if (!/^[0-9a-f]{64}$/.test(digest)) {
      throw new TypeError(`${type} must be a lowercase SHA-256 digest.`);
    }
    return digest;
  }

  const normalizedUrl = normalizeSourceUrl(value);
  if (!normalizedUrl) throw new TypeError("canonical_url must be a safe HTTP(S) URL.");
  return sha256Hex(normalizedUrl);
}
