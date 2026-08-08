import assert from "node:assert/strict";
import { createHmac } from "node:crypto";
import test from "node:test";

const adminSecret = "test-only-admin-session-secret-32-characters";
process.env.TRAINWIKI_ADMIN_GITHUB_LOGIN = "bravo-girl";
process.env.TRAINWIKI_ADMIN_SESSION_SECRET = adminSecret;

function createAdminCookie(now = Date.now()) {
  const issuedAt = Math.floor(now / 1_000);
  const payload = Buffer.from(
    JSON.stringify({ sub: "bravo-girl", iat: issuedAt, exp: issuedAt + 8 * 60 * 60 }),
  ).toString("base64url");
  const signature = createHmac("sha256", adminSecret)
    .update(payload)
    .digest("base64url");
  return `__Host-trainwiki_admin=${payload}.${signature}`;
}

async function callAdmin(database, authenticated = true) {
  const workerUrl = new URL("../dist/server/index.js", import.meta.url);
  workerUrl.searchParams.set("admin-learning-test", `${Date.now()}-${Math.random()}`);
  const { default: worker } = await import(workerUrl.href);
  const headers = new Headers({ accept: "text/html" });
  if (authenticated) headers.set("cookie", createAdminCookie());

  return worker.fetch(
    new Request("http://localhost/admin", { headers }),
    {
      ASSETS: { fetch: async () => new Response("Not found", { status: 404 }) },
      DB: database,
    },
    { waitUntil() {}, passThroughOnException() {} },
  );
}

function visibleText(html) {
  return html
    .replace(/<style\b[^>]*>[\s\S]*?<\/style>/gi, " ")
    .replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi, " ")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ");
}

test("reads and minimizes learning candidates only after admin authentication", async () => {
  let learningQueries = 0;
  const secret = "supersecretvalue";
  const fingerprint = "a".repeat(64);
  const database = {
    prepare(query) {
      learningQueries += Number(query.includes("FROM learning_candidates"));
      return {
        async all() {
          return {
            results: [
              {
                id: "learn_real_candidate",
                type: "faq",
                status: "collecting",
                frequency: 3,
                proposal_json: JSON.stringify({
                  question: `Wie funktioniert die Suche? api_key=${secret}`,
                  recommendation: `Kontakt user@example.org, Kennung ${fingerprint}`,
                }),
                created_at: "2026-08-02 10:30:00",
                open_count: 1,
              },
            ],
          };
        },
      };
    },
  };

  const anonymous = await callAdmin(database, false);
  assert.equal(anonymous.status, 200);
  assert.equal(learningQueries, 0);
  assert.match(await anonymous.text(), /Adminzugang/);

  const authenticated = await callAdmin(database, true);
  assert.equal(authenticated.status, 200);
  assert.ok(learningQueries >= 1);
  const html = await authenticated.text();
  const text = visibleText(html);
  assert.match(text, /Wiederkehrende Frage/);
  assert.match(text, /3 Beobachtungen/);
  assert.match(text, /02\.08\.2026, 12:30/);
  assert.match(text, /Zugangsdaten entfernt/);
  assert.match(text, /Kontakt entfernt/);
  assert.match(text, /Kennung ausgeblendet/);
  assert.doesNotMatch(text, new RegExp(secret));
  assert.doesNotMatch(text, new RegExp(fingerprint));
  assert.doesNotMatch(html, /learn_real_candidate/);
});

test("shows an empty read-only list when the learning query fails", async () => {
  const response = await callAdmin({
    prepare() {
      return {
        async all() {
          throw new Error("database unavailable");
        },
      };
    },
  });

  assert.equal(response.status, 200);
  const text = visibleText(await response.text());
  assert.match(text, /Keine offenen Lernvorschläge/);
  assert.match(text, /Nur-Lese-Ansicht/);
});
