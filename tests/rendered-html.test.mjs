import assert from "node:assert/strict";
import { createHmac } from "node:crypto";
import { access, readFile } from "node:fs/promises";
import test from "node:test";

const templateRoot = new URL("../", import.meta.url);
const adminSecret = "test-only-admin-session-secret-32-characters";
process.env.TRAINWIKI_ADMIN_GITHUB_LOGIN = "bravo-girl";
process.env.TRAINWIKI_ADMIN_SESSION_SECRET = adminSecret;
delete process.env.GROQ_API_KEY;

function createD1Counter(value = 1) {
  return {
    prepare(query) {
      return {
        query,
        bind(...values) {
          return { query, values };
        },
      };
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

test("renders the public Groq chat without authentication", async () => {
  const response = await call("/chat", {
    headers: { accept: "text/html" },
  });
  assert.equal(response.status, 200);
  assert.match(response.headers.get("content-type") ?? "", /^text\/html\b/i);

  const html = await response.text();
  assert.match(html, /<title>Chat · TrainWiki<\/title>/i);
  assert.match(html, /Frag GPT-OSS 20B\./);
  assert.match(html, /Öffentlicher Groq-Dialog/);
  assert.match(html, /Groq · ohne Anmeldung/);
  assert.doesNotMatch(html, /codex-preview|react-loading-skeleton/i);
});

test("shows the app-owned admin login without a session", async () => {
  const response = await call("/admin", {
    headers: { accept: "text/html" },
  });
  assert.equal(response.status, 200);

  const html = await response.text();
  assert.match(html, /<title>Admin · TrainWiki<\/title>/i);
  assert.match(html, /Adminzugang/);
  assert.match(html, /GitHub Personal Access Token/);
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
    body: JSON.stringify({ question: "Was ist TrainWiki?", history: [] }),
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
        choices: [{ message: { content: "Testantwort" } }],
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
        body: JSON.stringify({ question: "Kurzer Test", history: [] }),
      },
      { GROQ_API_KEY: "gsk_test_key_never_used_outside_fixture" },
    );
    assert.equal(response.status, 200);
    assert.equal((await response.json()).answer, "Testantwort");

    const payload = JSON.parse(upstreamRequest.init.body);
    assert.equal(payload.model, "openai/gpt-oss-20b");
    assert.equal(payload.max_completion_tokens, 1_024);
    assert.equal(payload.reasoning_effort, "low");
    assert.equal(payload.include_reasoning, false);
    assert.equal(payload.stream, false);
    assert.match(upstreamRequest.init.headers.Authorization, /^Bearer gsk_/);
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
