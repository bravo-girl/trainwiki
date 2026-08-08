import assert from "node:assert/strict";
import { createHash } from "node:crypto";
import {
  appendFile,
  mkdir,
  mkdtemp,
  readFile,
  readdir,
  rename,
  rm,
  writeFile,
} from "node:fs/promises";
import { tmpdir } from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";
import test from "node:test";

const scriptPath = fileURLToPath(
  new URL("../scripts/bootstrap_input.py", import.meta.url),
);
const importedAt = "2026-08-02T12:00:00Z";

async function writeMarkdown(directory, filename, value) {
  await mkdir(directory, { recursive: true });
  await writeFile(path.join(directory, filename), value, "utf8");
}

function runBootstrap(input, repo, timestamp = importedAt) {
  return spawnSync(
    "python",
    [
      scriptPath,
      "--input",
      input,
      "--repo",
      repo,
      "--imported-at",
      timestamp,
    ],
    { encoding: "utf8" },
  );
}

async function snapshotFiles(root) {
  const snapshot = {};

  async function visit(directory) {
    const entries = await readdir(directory, { withFileTypes: true });
    for (const entry of entries.sort((left, right) =>
      left.name.localeCompare(right.name),
    )) {
      const absolute = path.join(directory, entry.name);
      if (entry.isDirectory()) {
        await visit(absolute);
      } else if (entry.isFile()) {
        const relative = path.relative(root, absolute).replaceAll("\\", "/");
        const bytes = await readFile(absolute);
        snapshot[relative] = createHash("sha256").update(bytes).digest("hex");
      }
    }
  }

  await visit(root);
  return snapshot;
}

const alpha = `---
title: Alpha
source_id: src_fixture_alpha
canonical_url: HTTPS://EXAMPLE.COM:443/alpha#fragment
---
# Dateiname Alpha

## Wissen

Gleicher Inhalt.
`;

const beta = `---
title: Beta
source_id: src_fixture_beta
canonical_url: https://example.com/beta
---
# Dateiname Beta

## Wissen

Gleicher Inhalt.
`;

test("bootstrap keeps provenance-separated content and is a byte-exact retry no-op", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-bootstrap-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const input = path.join(root, "input");
  const repo = path.join(root, "repo");
  await mkdir(repo, { recursive: true });
  await writeMarkdown(input, "alpha.md", alpha);
  await writeMarkdown(input, "beta.md", beta);
  await writeMarkdown(input, "z-alpha-copy.md", alpha);

  const first = runBootstrap(input, repo);
  assert.equal(first.status, 0, first.stderr || first.stdout);
  const indexPath = path.join(
    repo,
    "sources/manifests/bootstrap/index.json",
  );
  const index = JSON.parse(await readFile(indexPath, "utf8"));
  assert.equal(index.source_count, 2);
  assert.equal(index.duplicate_count, 1);
  assert.equal(index.content_duplicate_groups.length, 1);
  assert.deepEqual(
    index.sources.map((source) => source.source_id).sort(),
    ["src_fixture_alpha", "src_fixture_beta"],
  );
  assert.deepEqual(
    index.sources.map((source) => source.canonical_url).sort(),
    ["https://example.com/alpha", "https://example.com/beta"],
  );
  assert.equal(
    new Set(index.sources.map((source) => source.normalized_sha256)).size,
    1,
  );

  const beforeRetry = await snapshotFiles(repo);
  const retry = runBootstrap(input, repo);
  assert.equal(retry.status, 0, retry.stderr || retry.stdout);
  assert.equal(JSON.parse(retry.stdout).status, "retry_noop");
  assert.deepEqual(await snapshotFiles(repo), beforeRetry);

  const betaSource = index.sources.find(
    (source) => source.source_id === "src_fixture_beta",
  );
  const betaManifestPath = path.join(repo, betaSource.manifest_repo_path);
  const originalBetaManifest = await readFile(betaManifestPath, "utf8");
  const tamperedManifest = JSON.parse(originalBetaManifest);
  tamperedManifest.source_sha256 = "f".repeat(64);
  await writeFile(
    betaManifestPath,
    `${JSON.stringify(tamperedManifest, null, 2)}\n`,
    "utf8",
  );
  const beforeTamperCheck = await snapshotFiles(repo);
  const tamperCheck = runBootstrap(input, repo);
  assert.notEqual(tamperCheck.status, 0);
  assert.deepEqual(await snapshotFiles(repo), beforeTamperCheck);
  await writeFile(betaManifestPath, originalBetaManifest, "utf8");

  const mixedManifest = JSON.parse(originalBetaManifest);
  mixedManifest.converter.profile = "bootstrap-markdown-v1";
  const mixedIndex = JSON.parse(await readFile(indexPath, "utf8"));
  mixedIndex.sources.find(
    (source) => source.source_id === "src_fixture_beta",
  ).converter.profile = "bootstrap-markdown-v1";
  await writeFile(
    betaManifestPath,
    `${JSON.stringify(mixedManifest, null, 2)}\n`,
    "utf8",
  );
  await writeFile(
    indexPath,
    `${JSON.stringify(mixedIndex, null, 2)}\n`,
    "utf8",
  );
  const beforeMixedConflict = await snapshotFiles(repo);
  const mixedConflict = runBootstrap(input, repo);
  assert.notEqual(mixedConflict.status, 0);
  assert.match(mixedConflict.stderr, /identity_conflict/u);
  assert.deepEqual(await snapshotFiles(repo), beforeMixedConflict);
});

test("legacy manifests keep their path and converter profile changes cannot masquerade as retries", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-legacy-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const input = path.join(root, "input");
  const repo = path.join(root, "repo");
  await mkdir(repo, { recursive: true });
  await writeMarkdown(input, "legacy.md", alpha.replaceAll("alpha", "legacy"));

  const initial = runBootstrap(input, repo);
  assert.equal(initial.status, 0, initial.stderr || initial.stdout);

  const manifestRoot = path.join(repo, "sources/manifests/bootstrap");
  const indexPath = path.join(manifestRoot, "index.json");
  const currentIndex = JSON.parse(await readFile(indexPath, "utf8"));
  const source = currentIndex.sources[0];
  const versionedNormalized = path.join(repo, source.normalized_repo_path);
  const legacyNormalizedRelative = "sources/normalized/bootstrap/legacy.md";
  const legacyNormalized = path.join(repo, legacyNormalizedRelative);
  await rename(versionedNormalized, legacyNormalized);
  await rm(path.dirname(versionedNormalized), { recursive: true, force: true });

  const versionedManifest = path.join(repo, source.manifest_repo_path);
  const legacyManifest = path.join(manifestRoot, "legacy.json");
  await rename(versionedManifest, legacyManifest);
  await rm(path.dirname(versionedManifest), { recursive: true, force: true });

  const legacySource = {
    ...source,
    schema_version: 1,
    normalized_repo_path: legacyNormalizedRelative,
    converter: {
      name: source.converter.name,
      version: source.converter.version,
    },
  };
  for (const key of [
    "aliases",
    "content_duplicate_group",
    "final_url",
    "import_status",
    "manifest_repo_path",
    "normalized_sha256",
    "requested_url",
    "supersedes_source_version_id",
  ]) {
    delete legacySource[key];
  }
  await writeFile(
    legacyManifest,
    `${JSON.stringify(legacySource, null, 2)}\n`,
    "utf8",
  );
  await writeFile(
    indexPath,
    `${JSON.stringify(
      {
        schema_version: 1,
        imported_at: currentIndex.imported_at,
        input_directory: "../input",
        corpus_sha256: currentIndex.corpus_sha256,
        imported_count: 1,
        quarantined_count: 0,
        sources: [legacySource],
      },
      null,
      2,
    )}\n`,
    "utf8",
  );
  const quarantinePath = path.join(
    repo,
    "sources/quarantine/bootstrap-review.json",
  );
  await writeFile(
    quarantinePath,
    `${JSON.stringify(
      {
        schema_version: 1,
        reviewed_at: importedAt,
        policy: "legacy",
        documents: [],
      },
      null,
      2,
    )}\n`,
    "utf8",
  );
  await rm(path.join(repo, "outputs"), { recursive: true, force: true });

  const beforeRetry = await snapshotFiles(repo);
  const retry = runBootstrap(input, repo);
  assert.equal(retry.status, 0, retry.stderr || retry.stdout);
  assert.equal(JSON.parse(retry.stdout).status, "retry_noop");
  assert.deepEqual(await snapshotFiles(repo), beforeRetry);
  assert.equal(
    Object.keys(beforeRetry).filter((filename) =>
      filename.startsWith("sources/manifests/bootstrap/by-version/"),
    ).length,
    0,
  );

  const incompatibleManifest = JSON.parse(await readFile(legacyManifest, "utf8"));
  incompatibleManifest.converter.profile = "bootstrap-markdown-v1";
  const incompatibleIndex = JSON.parse(await readFile(indexPath, "utf8"));
  incompatibleIndex.sources[0].converter.profile = "bootstrap-markdown-v1";
  await writeFile(
    legacyManifest,
    `${JSON.stringify(incompatibleManifest, null, 2)}\n`,
    "utf8",
  );
  await writeFile(
    indexPath,
    `${JSON.stringify(incompatibleIndex, null, 2)}\n`,
    "utf8",
  );
  const beforeConflict = await snapshotFiles(repo);
  const conflict = runBootstrap(input, repo);
  assert.notEqual(conflict.status, 0);
  assert.match(conflict.stderr, /identity_conflict/u);
  assert.deepEqual(await snapshotFiles(repo), beforeConflict);
});

test("a new source version appends after an existing log tail", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-log-tail-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const input = path.join(root, "input");
  const repo = path.join(root, "repo");
  await mkdir(repo, { recursive: true });
  await writeMarkdown(input, "alpha.md", alpha);
  const initial = runBootstrap(input, repo);
  assert.equal(initial.status, 0, initial.stderr || initial.stdout);

  const logPath = path.join(repo, "wiki/log.md");
  const preservedTail = "## [2026-08-02T12:30:00Z] review | manual\n\n- bleibt erhalten\n";
  await appendFile(logPath, `\n${preservedTail}`, "utf8");
  await writeMarkdown(input, "alpha.md", alpha.replace("Gleicher Inhalt.", "Neue Fassung."));

  const update = runBootstrap(input, repo, "2026-08-02T13:00:00Z");
  assert.equal(update.status, 0, update.stderr || update.stdout);
  const log = await readFile(logPath, "utf8");
  assert.match(log, /2026-08-02T12:00:00Z.*bootstrap-import/u);
  assert.ok(log.includes(preservedTail.trim()));
  assert.ok(
    log.indexOf(preservedTail.trim()) <
      log.indexOf("2026-08-02T13:00:00Z] bootstrap-import"),
  );
});

test("removing a previously public source fails closed without a repository diff", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-removal-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const input = path.join(root, "input");
  const repo = path.join(root, "repo");
  await mkdir(repo, { recursive: true });
  await writeMarkdown(input, "alpha.md", alpha);
  await writeMarkdown(input, "beta.md", beta);
  const initial = runBootstrap(input, repo);
  assert.equal(initial.status, 0, initial.stderr || initial.stdout);

  await rm(path.join(input, "beta.md"));
  const beforeRemoval = await snapshotFiles(repo);
  const removal = runBootstrap(input, repo, "2026-08-02T13:00:00Z");
  assert.notEqual(removal.status, 0);
  assert.match(removal.stderr, /missing_source_ids/u);
  assert.deepEqual(await snapshotFiles(repo), beforeRemoval);
});

test("corpus and seed keys include logical identity, not only the raw hash multiset", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-seed-key-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const anonymous = "# Gleicher Inhalt\n\nText.\n";

  async function importPair(repoName, secondFilename) {
    const input = path.join(root, `${repoName}-input`);
    const repo = path.join(root, repoName);
    await mkdir(repo, { recursive: true });
    await writeMarkdown(input, "a.md", anonymous);
    await writeMarkdown(input, secondFilename, anonymous);
    const result = runBootstrap(input, repo);
    assert.equal(result.status, 0, result.stderr || result.stdout);
    const output = JSON.parse(result.stdout);
    const index = JSON.parse(
      await readFile(
        path.join(repo, "sources/manifests/bootstrap/index.json"),
        "utf8",
      ),
    );
    return { output, index };
  }

  const first = await importPair("repo-one", "b.md");
  const renamed = await importPair("repo-two", "c.md");
  assert.notEqual(first.output.corpus_sha256, renamed.output.corpus_sha256);
  assert.notDeepEqual(
    first.index.sources.map((source) => source.source_id).sort(),
    renamed.index.sources.map((source) => source.source_id).sort(),
  );
  assert.match(first.output.seed, new RegExp(first.output.corpus_sha256, "u"));
  assert.match(renamed.output.seed, new RegExp(renamed.output.corpus_sha256, "u"));
});

test("multiple Markdown pages provide provenance for linked JSON and XML sources", async (t) => {
  const root = await mkdtemp(path.join(tmpdir(), "trainwiki-bootstrap-links-"));
  t.after(() => rm(root, { recursive: true, force: true }));
  const input = path.join(root, "input");
  const repo = path.join(root, "repo");
  await mkdir(repo, { recursive: true });
  await writeMarkdown(input, "page-a.md", `---
title: Page A
source: https://example.com/page-a
---
# Page A

[JSON](https://cdn.example.com/schema-a.json)
`);
  await writeMarkdown(input, "page-b.md", `---
title: Page B
source: https://example.com/page-b
---
# Page B

[XML](https://cdn.example.com/schema-b.xml)
`);
  await writeFile(path.join(input, "schema-a.json"), '{"name":"A"}', "utf8");
  await writeFile(path.join(input, "schema-b.xml"), "<schema><name>B</name></schema>", "utf8");

  const result = runBootstrap(input, repo);
  assert.equal(result.status, 0, result.stderr || result.stdout);
  const index = JSON.parse(
    await readFile(path.join(repo, "sources/manifests/bootstrap/index.json"), "utf8"),
  );
  assert.equal(index.source_count, 4);
  const jsonSource = index.sources.find(
    (source) => source.original_filename === "schema-a.json",
  );
  assert.equal(jsonSource.media_type, "application/json");
  assert.equal(jsonSource.canonical_url, "https://cdn.example.com/schema-a.json");
  assert.equal(jsonSource.origin_page_url, "https://example.com/page-a");
  const xmlSource = index.sources.find(
    (source) => source.original_filename === "schema-b.xml",
  );
  assert.equal(xmlSource.media_type, "application/xml");
  assert.equal(xmlSource.origin_page_url, "https://example.com/page-b");
});
