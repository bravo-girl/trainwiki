import { getAdminSession } from "@/app/admin-auth";
import { getRuntimeBinding } from "@/lib/runtime-env";
import {
  normalizeSourceUrl,
  sourceIdentityHash,
} from "@/lib/source-identity";
import {
  checkSourceImport,
  type SourceImportDatabase,
  type SourceImportIdentity,
} from "@/lib/source-import";

const MAX_BODY_BYTES = 8_192;
const MAX_UPLOAD_BYTES = 20 * 1024 * 1024;
const SHA256 = /^[0-9a-f]{64}$/;

class ImportError extends Error {
  constructor(readonly status: number, message: string) {
    super(message);
  }
}

export async function POST(request: Request): Promise<Response> {
  try {
    enforceSameOrigin(request);
    const session = await getAdminSession();
    if (!session) throw new ImportError(401, "Admin-Anmeldung erforderlich.");
    if (!request.headers.get("content-type")?.toLowerCase().startsWith("application/json")) {
      throw new ImportError(415, "Für die Duplikatprüfung wird JSON erwartet.");
    }

    const database = getRuntimeBinding<SourceImportDatabase>("DB");
    if (!database) throw new ImportError(503, "Die Quellenprüfung ist momentan nicht verfügbar.");
    const payload = await readLimitedJson(request);
    const identities = await parseIdentities(payload);
    const result = await checkSourceImport(database, identities);
    if (result.status === "conflict") {
      return json(
        {
          status: "conflict",
          error: "Die Merkmale verweisen auf mehrere bestehende Quellen. Manuelle Prüfung erforderlich.",
          matchedBy: result.matchedBy,
        },
        409,
      );
    }
    return json(result, 200);
  } catch (error) {
    if (error instanceof ImportError) {
      return json({ error: error.message }, error.status);
    }
    console.error("Unexpected source preflight error.");
    return json({ error: "Die Quellenprüfung ist fehlgeschlagen." }, 500);
  }
}

function enforceSameOrigin(request: Request): void {
  if (request.headers.get("sec-fetch-site") === "cross-site") {
    throw new ImportError(403, "Die Anfrage wurde abgelehnt.");
  }
  const origin = request.headers.get("origin");
  try {
    if (origin && new URL(origin).origin !== new URL(request.url).origin) {
      throw new ImportError(403, "Die Anfrage wurde abgelehnt.");
    }
  } catch (error) {
    if (error instanceof ImportError) throw error;
    throw new ImportError(403, "Die Anfrage wurde abgelehnt.");
  }
}

async function parseIdentities(payload: unknown): Promise<SourceImportIdentity[]> {
  if (!payload || typeof payload !== "object") {
    throw new ImportError(400, "Ungültige Importdaten.");
  }
  const candidate = payload as Record<string, unknown>;
  if (candidate.kind === "url") {
    const canonicalUrl = normalizeSourceUrl(candidate.url);
    if (!canonicalUrl) throw new ImportError(400, "Ungültige öffentliche URL.");
    return [
      {
        type: "canonical_url",
        hash: await sourceIdentityHash("canonical_url", canonicalUrl),
      },
    ];
  }
  if (candidate.kind !== "file") {
    throw new ImportError(400, "Unbekannte Importart.");
  }
  const filename = cleanFilename(candidate.filename);
  const sizeBytes = Number(candidate.sizeBytes);
  if (!filename || !Number.isInteger(sizeBytes) || sizeBytes < 0 || sizeBytes > MAX_UPLOAD_BYTES) {
    throw new ImportError(400, "Ungültige Datei oder Dateigröße.");
  }

  const identities: SourceImportIdentity[] = [
    { type: "raw_sha256", hash: parseDigest(candidate.rawSha256, "Rohdatei") },
  ];
  if (candidate.normalizedSha256 !== undefined) {
    identities.push({
      type: "normalized_sha256",
      hash: parseDigest(candidate.normalizedSha256, "normalisierte Datei"),
    });
  }
  return identities;
}

function parseDigest(value: unknown, label: string): string {
  const digest = typeof value === "string" ? value.trim().toLowerCase() : "";
  if (!SHA256.test(digest)) throw new ImportError(400, `Ungültiger SHA-256 für ${label}.`);
  return digest;
}

function cleanFilename(value: unknown): string {
  if (typeof value !== "string") return "";
  const filename = value.trim();
  return filename && filename.length <= 255 && !/[\\/\u0000-\u001f\u007f]/.test(filename)
    ? filename
    : "";
}

async function readLimitedJson(request: Request): Promise<unknown> {
  const declaredLength = Number(request.headers.get("content-length") ?? 0);
  if (Number.isFinite(declaredLength) && declaredLength > MAX_BODY_BYTES) {
    throw new ImportError(413, "Die Anfrage ist zu groß.");
  }
  if (!request.body) throw new ImportError(400, "Die Anfrage enthält keine Daten.");
  const reader = request.body.getReader();
  const chunks: Uint8Array[] = [];
  let received = 0;
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    received += value.byteLength;
    if (received > MAX_BODY_BYTES) {
      await reader.cancel();
      throw new ImportError(413, "Die Anfrage ist zu groß.");
    }
    chunks.push(value);
  }
  const bytes = new Uint8Array(received);
  let offset = 0;
  for (const chunk of chunks) {
    bytes.set(chunk, offset);
    offset += chunk.byteLength;
  }
  try {
    return JSON.parse(new TextDecoder().decode(bytes)) as unknown;
  } catch {
    throw new ImportError(400, "Die Anfrage enthält ungültiges JSON.");
  }
}

function json(value: unknown, status: number): Response {
  return Response.json(value, {
    status,
    headers: {
      "Cache-Control": "no-store",
      "X-Content-Type-Options": "nosniff",
    },
  });
}
