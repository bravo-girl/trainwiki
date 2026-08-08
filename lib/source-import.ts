import type { SourceIdentityType } from "./source-identity";

export type SourceImportIdentity = {
  type: SourceIdentityType;
  hash: string;
};

export type SourceImportMatch = {
  identityType: SourceIdentityType;
  sourceId: string;
  sourceVersionId?: string;
  title: string;
};

export type SourceImportCheck =
  | { status: "new" }
  | {
      status: "duplicate";
      sourceId: string;
      sourceVersionId?: string;
      title: string;
      matchedBy: SourceIdentityType[];
    }
  | {
      status: "conflict";
      sourceIds: string[];
      matchedBy: SourceIdentityType[];
    };

type RawIdentityRow = {
  identity_type?: unknown;
  source_id?: unknown;
  source_version_id?: unknown;
  title?: unknown;
};

export interface SourceImportPreparedStatement {
  bind(...values: string[]): SourceImportPreparedStatement;
  all<T = RawIdentityRow>(): Promise<{ results?: T[] }>;
}

export interface SourceImportDatabase {
  prepare(query: string): SourceImportPreparedStatement;
}

const SHA256 = /^[0-9a-f]{64}$/;
const IDENTITY_TYPES = new Set<SourceIdentityType>([
  "canonical_url",
  "normalized_sha256",
  "raw_sha256",
]);

function cleanInline(value: unknown, maximum: number): string {
  return typeof value === "string"
    ? value.replace(/[\u0000-\u001f\u007f]/g, " ").replace(/\s+/g, " ").trim().slice(0, maximum)
    : "";
}

function uniqueIdentities(
  identities: readonly SourceImportIdentity[],
): SourceImportIdentity[] {
  const unique = new Map<string, SourceImportIdentity>();
  for (const identity of identities) {
    if (!IDENTITY_TYPES.has(identity.type) || !SHA256.test(identity.hash)) {
      throw new TypeError("Ungültige Quellenidentität.");
    }
    unique.set(`${identity.type}:${identity.hash}`, identity);
  }
  if (unique.size === 0 || unique.size > 3) {
    throw new TypeError("Eine bis drei Quellenidentitäten werden erwartet.");
  }
  return [...unique.values()];
}

function asMatch(row: RawIdentityRow): SourceImportMatch | null {
  const identityType = cleanInline(row.identity_type, 32) as SourceIdentityType;
  const sourceId = cleanInline(row.source_id, 160);
  if (!IDENTITY_TYPES.has(identityType) || !sourceId) return null;
  const sourceVersionId = cleanInline(row.source_version_id, 160);
  return {
    identityType,
    sourceId,
    ...(sourceVersionId ? { sourceVersionId } : {}),
    title: cleanInline(row.title, 300) || "Bestehende Quelle",
  };
}

export async function checkSourceImport(
  database: SourceImportDatabase,
  input: readonly SourceImportIdentity[],
): Promise<SourceImportCheck> {
  const identities = uniqueIdentities(input);
  const predicates = identities
    .map(() => "(si.identity_type = ? AND si.identity_hash = ?)")
    .join(" OR ");
  const values = identities.flatMap((identity) => [identity.type, identity.hash]);
  const response = await database
    .prepare(`
      SELECT
        si.identity_type,
        si.source_id,
        si.source_version_id,
        s.title
      FROM source_identities AS si
      INNER JOIN sources AS s ON s.id = si.source_id
      WHERE ${predicates}
      ORDER BY
        CASE si.identity_type
          WHEN 'canonical_url' THEN 0
          WHEN 'raw_sha256' THEN 1
          ELSE 2
        END,
        si.source_id
    `)
    .bind(...values)
    .all<RawIdentityRow>();
  const matches = (response.results ?? [])
    .map(asMatch)
    .filter((match): match is SourceImportMatch => Boolean(match));
  if (matches.length === 0) return { status: "new" };

  const definitive = matches.filter(
    (match) => match.identityType !== "normalized_sha256",
  );
  const relevant = definitive.length ? definitive : matches;
  const sourceIds = [...new Set(relevant.map((match) => match.sourceId))].sort();
  const matchedBy = [
    ...new Set(relevant.map((match) => match.identityType)),
  ].sort() as SourceIdentityType[];
  if (sourceIds.length !== 1) {
    return { status: "conflict", sourceIds, matchedBy };
  }

  const match = relevant.find((item) => item.sourceId === sourceIds[0])!;
  return {
    status: "duplicate",
    sourceId: match.sourceId,
    ...(match.sourceVersionId ? { sourceVersionId: match.sourceVersionId } : {}),
    title: match.title,
    matchedBy,
  };
}
