export const CHAT_ATTACHMENT_MEDIA_TYPES = new Set([
  "text/markdown",
  "application/pdf",
  "text/html",
  "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
  "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
]);

export type ChatAttachmentInput = {
  filename: string;
  mediaType: string;
  rawSha256: string;
  text: string;
};

type PreparedStatement = {
  bind(...values: unknown[]): PreparedStatement;
  first<T = Record<string, unknown>>(): Promise<T | null>;
  run(): Promise<unknown>;
};

export type AttachmentDatabase = {
  prepare(sql: string): PreparedStatement;
  batch(statements: PreparedStatement[]): Promise<unknown[]>;
};

export type StoredAttachment = ChatAttachmentInput & {
  sourceId: string;
  sourceVersionId: string;
  pagePath: string;
  normalizedSha256: string;
  added: boolean;
};

function safeTitle(filename: string) {
  return filename.replace(/\.[^.]+$/, "").replace(/[-_]+/g, " ").replace(/\s+/g, " ").trim().slice(0, 180) || "Chat-Dokument";
}

function splitText(text: string, limit = 1_800) {
  const chunks: string[] = [];
  let remaining = text.trim();
  while (remaining) {
    if (remaining.length <= limit) {
      chunks.push(remaining);
      break;
    }
    const cutAt = Math.max(remaining.lastIndexOf("\n", limit), remaining.lastIndexOf(" ", limit));
    const cut = cutAt > limit / 2 ? cutAt : limit;
    chunks.push(remaining.slice(0, cut).trim());
    remaining = remaining.slice(cut).trim();
  }
  return chunks;
}

function terms(text: string) {
  const stop = new Set(["aber", "alle", "als", "auch", "auf", "aus", "bei", "das", "dass", "dem", "den", "der", "des", "die", "ein", "eine", "einer", "eines", "für", "hat", "hier", "ist", "mit", "nach", "nicht", "oder", "sich", "sind", "und", "von", "was", "werden", "wie", "wird", "zum", "zur", "the", "and", "for", "from", "this", "with"]);
  const counts = new Map<string, number>();
  for (const token of text.normalize("NFKC").toLowerCase().match(/[^\W_]{3,}/gu) ?? []) {
    if (!stop.has(token)) counts.set(token, (counts.get(token) ?? 0) + 1);
  }
  return [...counts].sort((left, right) => right[1] - left[1] || left[0].localeCompare(right[0])).slice(0, 64);
}

async function hashText(value: string) {
  const digest = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(value));
  return Array.from(new Uint8Array(digest), (item) => item.toString(16).padStart(2, "0")).join("");
}

export async function storeChatAttachment(
  database: AttachmentDatabase,
  attachment: ChatAttachmentInput,
): Promise<StoredAttachment> {
  const existing = await database
    .prepare(
      `SELECT si.source_id AS sourceId,
              COALESCE(si.source_version_id, s.current_version_id) AS sourceVersionId,
              (SELECT wp.path FROM wiki_pages AS wp
               WHERE json_extract(wp.metadata_json, '$.source_id') = si.source_id
               ORDER BY wp.updated_at DESC LIMIT 1) AS pagePath
       FROM source_identities AS si
       INNER JOIN sources AS s ON s.id = si.source_id
       WHERE si.identity_type = 'raw_sha256' AND si.identity_hash = ?
       LIMIT 1`,
    )
    .bind(attachment.rawSha256)
    .first<{ sourceId: string; sourceVersionId: string; pagePath: string | null }>();
  const normalizedSha256 = await hashText(attachment.text.normalize("NFKC").trim());
  if (existing) {
    return {
      ...attachment,
      sourceId: existing.sourceId,
      sourceVersionId: existing.sourceVersionId,
      pagePath: existing.pagePath ?? `wiki/chat-uploads/${attachment.rawSha256.slice(0, 24)}.md`,
      normalizedSha256,
      added: false,
    };
  }

  const sourceId = `src_chat_${attachment.rawSha256.slice(0, 20)}`;
  const sourceVersionId = `sv_chat_${attachment.rawSha256.slice(0, 24)}`;
  const pagePath = `wiki/chat-uploads/${attachment.rawSha256.slice(0, 24)}.md`;
  const title = safeTitle(attachment.filename);
  const createdAt = new Date().toISOString();
  const chunks = splitText(attachment.text);
  const chunkRows = await Promise.all(
    chunks.map(async (text, ordinal) => {
      const contentSha = await hashText(text);
      return {
        id: `chunk_chat_${(await hashText(`${attachment.rawSha256}:${ordinal}:${contentSha}`)).slice(0, 24)}`,
        ordinal,
        text,
        contentSha,
        tokenCount: text.split(/\s+/).filter(Boolean).length,
      };
    }),
  );
  const termRows = chunkRows.flatMap((chunk) => terms(chunk.text).map(([term, frequency]) => [chunk.id, term, frequency]));
  const metadata = JSON.stringify({ source_id: sourceId, source_version_id: sourceVersionId, bootstrap: false, chat_upload: true });
  const manifest = JSON.stringify({ schema_version: 2, source_id: sourceId, source_version_id: sourceVersionId, original_filename: attachment.filename, source_sha256: attachment.rawSha256, normalized_sha256: normalizedSha256, media_type: attachment.mediaType, imported_at: createdAt, origin: "public_chat", raw_binary_committed: false });
  const chunkPayload = JSON.stringify(
    chunkRows.map((chunk) => [chunk.id, pagePath, chunk.ordinal, "Hochgeladenes Dokument", chunk.text, chunk.tokenCount, JSON.stringify({ source_id: sourceId, source_version_id: sourceVersionId, source_sha256: attachment.rawSha256 }), chunk.contentSha]),
  );

  await database.batch([
    database.prepare("INSERT OR IGNORE INTO sources (id,kind,title,canonical_url,language,license,visibility,status,created_by,created_at,current_version_id) VALUES (?,?,?,NULL,'de','unknown','public','active','public_chat',?,?)").bind(sourceId, "file", title, createdAt, sourceVersionId),
    database.prepare("INSERT OR IGNORE INTO source_versions (id,source_id,sha256,normalized_sha256,size_bytes,media_type,original_filename,normalized_repo_path,converter_name,converter_version,fetch_time,created_at,supersedes_version_id,manifest_json) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,NULL,?)").bind(sourceVersionId, sourceId, attachment.rawSha256, normalizedSha256, new TextEncoder().encode(attachment.text).byteLength, attachment.mediaType, attachment.filename, pagePath, "chat-browser-extractor", "1", createdAt, createdAt, manifest),
    database.prepare("INSERT OR IGNORE INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('raw_sha256',?,?,?,?,?)").bind(attachment.rawSha256, sourceId, sourceVersionId, JSON.stringify({ original_filename: attachment.filename, origin: "public_chat" }), createdAt),
    database.prepare("INSERT OR IGNORE INTO source_identities (identity_type,identity_hash,source_id,source_version_id,metadata_json,created_at) VALUES ('normalized_sha256',?,?,NULL,?,?)").bind(normalizedSha256, sourceId, JSON.stringify({ original_filename: attachment.filename, origin: "public_chat" }), createdAt),
    database.prepare("INSERT OR IGNORE INTO wiki_pages (path,title,summary,commit_sha,content_sha,updated_at,metadata_json) VALUES (?,?,?,?,?,?,?)").bind(pagePath, title, attachment.text.replace(/\s+/g, " ").slice(0, 360), `chat:${attachment.rawSha256}`, normalizedSha256, createdAt, metadata),
    database.prepare("INSERT OR IGNORE INTO wiki_chunks (id,page_path,ordinal,heading_path,text,token_count,source_refs_json,content_sha) SELECT json_extract(value,'$[0]'),json_extract(value,'$[1]'),json_extract(value,'$[2]'),json_extract(value,'$[3]'),json_extract(value,'$[4]'),json_extract(value,'$[5]'),json_extract(value,'$[6]'),json_extract(value,'$[7]') FROM json_each(?)").bind(chunkPayload),
    database.prepare("INSERT OR IGNORE INTO wiki_terms (chunk_id,term,frequency) SELECT json_extract(value,'$[0]'),json_extract(value,'$[1]'),json_extract(value,'$[2]') FROM json_each(?)").bind(JSON.stringify(termRows)),
  ]);

  return { ...attachment, sourceId, sourceVersionId, pagePath, normalizedSha256, added: true };
}
