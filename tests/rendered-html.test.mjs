import assert from "node:assert/strict";
import { createHmac } from "node:crypto";
import { access, readFile } from "node:fs/promises";
import test from "node:test";

const templateRoot = new URL("../", import.meta.url);
const adminSecret = "test-only-admin-session-secret-32-characters";
const testTurnId = "11111111-1111-4111-8111-111111111111";
process.env.TRAINWIKI_ADMIN_GITHUB_LOGIN = "bravo-girl";
process.env.TRAINWIKI_ADMIN_SESSION_SECRET = adminSecret;
delete process.env.GROQ_API_KEY;

const defaultWikiRows = [
  {
    id: "chunk-test",
    content_sha: "a".repeat(64),
    page_path: "wiki/sources/test.md",
    ordinal: 0,
    heading_path: "Abschnitt 1",
    text: "TAF/TAP ist eine geprüfte Testaussage.",
    source_refs_json: "{}",
    title: "Testquelle",
    metadata_json: JSON.stringify({ canonical_url: "https://example.org/source" }),
    source_id: "source-test",
    source_version_id: "source-test-v1",
    source_sha256: "b".repeat(64),
    score: 2,
    matched_terms: 1,
  },
];

function createD1Counter(value = 1, wikiRows = defaultWikiRows) {
  return {
    prepare(query) {
      const statement = {
        query,
        values: [],
        bind(...values) {
          this.values = values;
          return this;
        },
        async all() {
          return { results: wikiRows };
        },
        async run() {
          return { meta: { changes: 1 } };
        },
      };
      return statement;
    },
    async batch(statements) {
      return statements.map(() => ({ results: [{ value }] }));
    },
  };
}

async function call(pathname, options = {}, bindings = {}) {
  const workerUrl = new URL("../dist/server/index.js", import.meta.url);
  workerUrl.searchParams.set(
    "test",
    `${process.pid}-${Date.now()}-${Math.random()}`,
  );
  const { default: worker } = await import(workerUrl.href);

  return worker.fetch(
    new Request(`http://localhost${pathname}`, options),
    {
      ASSETS: {
        fetch: async () => new Response("Not found", { status: 404 }),
      },
      DB: createD1Counter(),
      ...bindings,
    },
    {
      waitUntil() {},
      passThroughOnException() {},
    },
  );
}

function visibleText(html) {
  return html
    .replace(/<style\b[^>]*>[\s\S]*?<\/style>/gi, " ")
    .replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ");
}

function createAdminCookie(login = "bravo-girl", now = Date.now()) {
  const issuedAt = Math.floor(now / 1_000);
  const payload = Buffer.from(
    JSON.stringify({ sub: login, iat: issuedAt, exp: issuedAt + 8 * 60 * 60 }),
  ).toString("base64url");
  const signature = createHmac("sha256", adminSecret)
    .update(payload)
    .digest("base64url");
  return `__Host-trainwiki_admin=${payload}.${signature}`;
}

test("renders the public, source-bound chat without authentication", async () => {
  const response = await call("/chat", {
    headers: { accept: "text/html" },
  });
  assert.equal(response.status, 200);
  assert.match(response.headers.get("content-type") ?? "", /^text\/html\b/i);

  const html = await response.text();
  assert.match(html, /<title>TrainWiki<\/title>/i);
  assert.match(html, /Was möchtest du wissen\?/);
  assert.match(html, /eingelesenen Unterlagen/);
  assert.equal((visibleText(html).match(/TrainWiki/gi) ?? []).length, 1);
  assert.doesNotMatch(visibleText(html).replace(/TrainWiki/i, ""), /Frag den Wiki|TAF\/TAP/i);
  assert.doesNotMatch(html, />Chat<|>Admin</i);
  assert.doesNotMatch(
    visibleText(html),
    /groq|gpt-oss|chatgpt|openai|cloudflare|dspy|modell/i,
  );
  assert.doesNotMatch(html, /codex-preview|react-loading-skeleton/i);
});

test("shows the app-owned admin login without a session", async () => {
  const response = await call("/admin", {
    headers: { accept: "text/html" },
  });
  assert.equal(response.status, 200);

  const html = await response.text();
  assert.match(html, /<title>TrainWiki<\/title>/i);
  assert.match(html, /Adminzugang/);
  assert.match(html, /Persönlicher Zugangsschlüssel/);
  assert.equal((visibleText(html).match(/TrainWiki/gi) ?? []).length, 1);
  assert.doesNotMatch(visibleText(html).replace(/TrainWiki/i, ""), /GitHub|Worker|API/i);
  assert.doesNotMatch(html, /Quellen rein\. Wissen wächst\./);
});

test("renders the admin workspace with a valid signed session", async () => {
  const response = await call("/admin", {
    headers: {
      accept: "text/html",
      cookie: createAdminCookie(),
    },
  });
  assert.equal(response.status, 200);

  const html = await response.text();
  assert.match(html, /Quellen rein\. Wissen wächst\./);
  assert.match(html, /PDF/);
  assert.match(html, /DOCX/);
  assert.match(html, /XLSX/);
  assert.match(html, /JSON/);
  assert.match(html, /YAML/);
  assert.match(html, /Website oder Weblink/);
  assert.match(html, /bravo-girl/);
});

test("rejects spoofed ChatGPT headers and tampered admin cookies", async () => {
  const response = await call("/admin", {
    headers: {
      accept: "text/html",
      cookie: `${createAdminCookie()}tampered`,
      "oai-authenticated-user-id": "bravo-girl",
    },
  });
  assert.equal(response.status, 200);
  const html = await response.text();
  assert.match(html, /Adminzugang/);
  assert.doesNotMatch(html, /Quellen rein\. Wissen wächst\./);
});

test("fails closed when the admin session secret is missing", async () => {
  delete process.env.TRAINWIKI_ADMIN_SESSION_SECRET;
  try {
    const response = await call("/admin", {
      headers: { accept: "text/html", cookie: createAdminCookie() },
    });
    assert.equal(response.status, 200);
    assert.match(await response.text(), /Adminzugang/);
  } finally {
    process.env.TRAINWIKI_ADMIN_SESSION_SECRET = adminSecret;
  }
});

test("verifies the GitHub PAT once and returns only a secure host session", async () => {
  const originalFetch = globalThis.fetch;
  const pat = "github_pat_test_fixture_with_no_real_permissions";
  let githubCalls = 0;
  globalThis.fetch = async (input, init) => {
    if (String(input) === "https://api.github.com/user") {
      githubCalls += 1;
      assert.equal(init.headers.Authorization, `Bearer ${pat}`);
      return Response.json({ login: "bravo-girl" });
    }
    return originalFetch(input, init);
  };

  try {
    const response = await call("/api/admin/login", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        origin: "http://localhost",
      },
      body: JSON.stringify({ token: pat }),
    });
    assert.equal(response.status, 200);
    assert.equal(githubCalls, 1);
    assert.deepEqual(await response.json(), { ok: true, login: "bravo-girl" });

    const cookie = response.headers.get("set-cookie") ?? "";
    assert.match(cookie, /^__Host-trainwiki_admin=/);
    assert.match(cookie, /HttpOnly/i);
    assert.match(cookie, /Secure/i);
    assert.match(cookie, /SameSite=Strict/i);
    assert.doesNotMatch(cookie, new RegExp(pat));
  } finally {
    globalThis.fetch = originalFetch;
  }
});

test("rejects a cross-origin admin login before contacting GitHub", async () => {
  const originalFetch = globalThis.fetch;
  let called = false;
  globalThis.fetch = async (...args) => {
    called = true;
    return originalFetch(...args);
  };
  try {
    const response = await call("/api/admin/login", {
      method: "POST",
      headers: {
        "content-type": "application/json",
        origin: "https://attacker.invalid",
      },
      body: JSON.stringify({
        token: "github_pat_test_fixture_with_no_real_permissions",
      }),
    });
    assert.equal(response.status, 403);
    assert.equal(called, false);
    assert.equal(response.headers.has("set-cookie"), false);
  } finally {
    globalThis.fetch = originalFetch;
  }
});

test("returns a safe configuration error when the Groq key is absent", async () => {
  const response = await call("/api/chat", {
    method: "POST",
    headers: {
      "content-type": "application/json",
      origin: "http://localhost",
    },
    body: JSON.stringify({
      question: "Was ist TrainWiki?",
      history: [],
      turnId: testTurnId,
    }),
  });
  assert.equal(response.status, 503);
  assert.match((await response.json()).error, /nicht konfiguriert/i);
});

test("proxies chat only to the fixed Groq GPT-OSS model", async () => {
  const originalFetch = globalThis.fetch;
  let upstreamRequest;
  globalThis.fetch = async (input, init) => {
    if (String(input) === "https://api.groq.com/openai/v1/chat/completions") {
      upstreamRequest = { input, init };
      return Response.json({
        choices: [{ message: { content: "Testantwort [1]" } }],
      });
    }
    return originalFetch(input, init);
  };

  try {
    const response = await call(
      "/api/chat",
      {
        method: "POST",
        headers: {
          "content-type": "application/json",
          origin: "http://localhost",
        },
        body: JSON.stringify({
          question: "Kurzer Test",
          history: [
            { role: "user", content: `alt-1 ${"a".repeat(743)}` },
            { role: "assistant", content: `alt-2 ${"b".repeat(743)}` },
            { role: "user", content: `neu-1 ${"c".repeat(743)}` },
            { role: "assistant", content: `neu-2 ${"d".repeat(743)}` },
            { role: "user", content: `neu-3 ${"e".repeat(743)}` },
            { role: "assistant", content: `neu-4 ${"f".repeat(743)}` },
          ],
          turnId: testTurnId,
        }),
      },
      { GROQ_API_KEY: "gsk_test_key_never_used_outside_fixture" },
    );
    assert.equal(response.status, 200);
    const responsePayload = await response.json();
    assert.equal(responsePayload.answer, "Testantwort [1]");
    assert.equal(responsePayload.sources[0].title, "Testquelle");
    assert.equal("path" in responsePayload.sources[0], false);

    const payload = JSON.parse(upstreamRequest.init.body);
    assert.equal(payload.model, "openai/gpt-oss-20b");
    assert.equal(payload.max_completion_tokens, 512);
    assert.equal(payload.reasoning_effort, "low");
    assert.equal(payload.include_reasoning, false);
    assert.equal(payload.stream, false);
    assert.match(upstreamRequest.init.headers.Authorization, /^Bearer gsk_/);
    assert.match(payload.messages[0].content, /Nummerierte Evidenz/);
    assert.match(payload.messages[0].content, /Every factual claim/i);
    assert.match(payload.messages[0].content, /ausschließlich anhand/);
    assert.deepEqual(
      payload.messages.slice(1, -1).map((message) => message.content.slice(0, 5)),
      ["neu-1", "neu-2", "neu-3", "neu-4"],
    );
    assert.ok(
      payload.messages.slice(1, -1).reduce(
        (sum, message) => sum + message.content.length,
        0,
      ) <= 3_000,
    );
  } finally {
    globalThis.fetch = originalFetch;
  }
});

test("does not expose an answer whose source citations are missing", async () => {
  const originalFetch = globalThis.fetch;
  globalThis.fetch = async (input, init) => {
    if (String(input) === "https://api.groq.com/openai/v1/chat/completions") {
      return Response.json({
        choices: [{ message: { content: "Unbelegte Behauptung" } }],
      });
    }
    return originalFetch(input, init);
  };

  try {
    const response = await call(
      "/api/chat",
      {
        method: "POST",
        headers: {
          "content-type": "application/json",
          origin: "http://localhost",
        },
        body: JSON.stringify({
          question: "Kurzer Test",
          history: [],
          turnId: testTurnId,
        }),
      },
      { GROQ_API_KEY: "gsk_test_key_never_used_outside_fixture" },
    );
    assert.equal(response.status, 200);
    const payload = await response.json();
    assert.match(payload.answer, /nicht zuverlässig/i);
    assert.deepEqual(payload.sources, []);
    assert.doesNotMatch(payload.answer, /Unbelegte Behauptung/);
  } finally {
    globalThis.fetch = originalFetch;
  }
});

test("abstains without evidence and does not call the answer service", async () => {
  const originalFetch = globalThis.fetch;
  let called = false;
  globalThis.fetch = async (...args) => {
    called = true;
    return originalFetch(...args);
  };

  try {
    const response = await call(
      "/api/chat",
      {
        method: "POST",
        headers: {
          "content-type": "application/json",
          origin: "http://localhost",
        },
        body: JSON.stringify({
          question: "Unbelegte Frage",
          history: [],
          turnId: testTurnId,
        }),
      },
      {
        DB: createD1Counter(1, []),
        GROQ_API_KEY: "gsk_test_key_never_used_outside_fixture",
      },
    );
    assert.equal(response.status, 200);
    const payload = await response.json();
    assert.match(payload.answer, /keinen ausreichenden Beleg/i);
    assert.deepEqual(payload.sources, []);
    assert.equal(called, false);
  } finally {
    globalThis.fetch = originalFetch;
  }
});

test("removes ChatGPT auth and disposable preview artifacts", async () => {
  const [layout, packageJson, builtWorker] = await Promise.all([
    readFile(new URL("../app/layout.tsx", import.meta.url), "utf8"),
    readFile(new URL("../package.json", import.meta.url), "utf8"),
    readFile(new URL("../dist/server/index.js", import.meta.url), "utf8"),
  ]);

  assert.doesNotMatch(layout, /codex-preview|_sites-preview/);
  assert.doesNotMatch(packageJson, /react-loading-skeleton/);
  assert.doesNotMatch(
    builtWorker,
    /signin-with-chatgpt|oai-authenticated|TRAINWIKI_ADMIN_USER_IDS/,
  );
  await assert.rejects(
    access(new URL("../app/chatgpt-auth.ts", templateRoot)),
  );
  await assert.rejects(
    access(new URL("../app/_sites-preview/SkeletonPreview.tsx", templateRoot)),
  );
  await assert.rejects(
    access(new URL("../app/_sites-preview/preview.css", templateRoot)),
  );
});
