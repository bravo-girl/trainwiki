import assert from "node:assert/strict";
import { access, readFile } from "node:fs/promises";
import test from "node:test";

const templateRoot = new URL("../", import.meta.url);
process.env.TRAINWIKI_ADMIN_USER_IDS = "test-admin";

async function render(pathname, headers = {}) {
  const workerUrl = new URL("../dist/server/index.js", import.meta.url);
  workerUrl.searchParams.set("test", `${process.pid}-${Date.now()}`);
  const { default: worker } = await import(workerUrl.href);

  return worker.fetch(
    new Request(`http://localhost${pathname}`, {
      headers: { accept: "text/html", ...headers },
    }),
    {
      ASSETS: {
        fetch: async () => new Response("Not found", { status: 404 }),
      },
    },
    {
      waitUntil() {},
      passThroughOnException() {},
    },
  );
}

test("renders the TrainWiki chat surface", async () => {
  const response = await render("/chat");
  assert.equal(response.status, 200);
  assert.match(response.headers.get("content-type") ?? "", /^text\/html\b/i);

  const html = await response.text();
  assert.match(html, /<title>Chat · TrainWiki<\/title>/i);
  assert.match(html, /Frag dein wachsendes Wissen\./);
  assert.match(html, /Quellengebundener Dialog/);
  assert.match(html, /Beispieldaten für den UI-Prototyp/);
  assert.doesNotMatch(html, /codex-preview|react-loading-skeleton/i);
});

test("renders the authenticated TrainWiki admin surface", async () => {
  const response = await render("/admin", {
    "oai-authenticated-user-id": "test-admin",
    "oai-authenticated-user-email": "admin@example.invalid",
    "oai-authenticated-user-full-name": "Test%20Admin",
    "oai-authenticated-user-full-name-encoding": "percent-encoded-utf-8",
  });
  assert.equal(response.status, 200);

  const html = await response.text();
  assert.match(html, /<title>Admin · TrainWiki<\/title>/i);
  assert.match(html, /Quellen rein\. Wissen wächst\./);
  assert.match(html, /PDF/);
  assert.match(html, /DOCX/);
  assert.match(html, /XLSX/);
  assert.match(html, /JSON/);
  assert.match(html, /YAML/);
  assert.match(html, /HTML/);
  assert.match(html, /Website oder Weblink/);
  assert.match(html, /Test Admin/);
});

test("protects the admin surface without an authenticated identity", async () => {
  const response = await render("/admin");
  assert.ok(response.status >= 300 && response.status < 400);
  const location = new URL(response.headers.get("location") ?? "", "http://localhost");
  assert.equal(location.pathname, "/signin-with-chatgpt");
  assert.equal(location.searchParams.get("return_to"), "/admin");
});

test("rejects an authenticated identity outside the admin allowlist", async () => {
  const response = await render("/admin", {
    "oai-authenticated-user-id": "not-an-admin",
    "oai-authenticated-user-email": "reader@example.invalid",
  });
  assert.ok(response.status >= 300 && response.status < 400);
  const location = new URL(response.headers.get("location") ?? "", "http://localhost");
  assert.equal(location.pathname, "/chat");
  assert.equal(location.searchParams.get("admin"), "forbidden");
});

test("fails closed when no admin allowlist is configured", async () => {
  const configuredAllowlist = process.env.TRAINWIKI_ADMIN_USER_IDS;
  delete process.env.TRAINWIKI_ADMIN_USER_IDS;
  try {
    const response = await render("/admin", {
      "oai-authenticated-user-id": "test-admin",
      "oai-authenticated-user-email": "admin@example.invalid",
    });
    assert.ok(response.status >= 300 && response.status < 400);
    const location = new URL(
      response.headers.get("location") ?? "",
      "http://localhost",
    );
    assert.equal(location.pathname, "/chat");
    assert.equal(location.searchParams.get("admin"), "configuration-required");
  } finally {
    process.env.TRAINWIKI_ADMIN_USER_IDS = configuredAllowlist;
  }
});

test("removes all disposable starter preview artifacts", async () => {
  const [layout, packageJson] = await Promise.all([
    readFile(new URL("../app/layout.tsx", import.meta.url), "utf8"),
    readFile(new URL("../package.json", import.meta.url), "utf8"),
  ]);

  assert.doesNotMatch(layout, /codex-preview|_sites-preview/);
  assert.doesNotMatch(packageJson, /react-loading-skeleton/);
  await assert.rejects(
    access(new URL("../app/_sites-preview/SkeletonPreview.tsx", templateRoot)),
  );
  await assert.rejects(
    access(new URL("../app/_sites-preview/preview.css", templateRoot)),
  );
});
