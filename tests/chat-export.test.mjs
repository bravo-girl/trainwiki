import assert from "node:assert/strict";
import test from "node:test";

import {
  createHtmlExport,
  createMarkdownExport,
  downloadChatExport,
  prepareChatExport,
} from "../lib/chat-export.ts";

const timestamp = "2026-08-02T12:00:00.000Z";
const conversation = [
  {
    question: "Was ist **RAG**?",
    answer: "RAG verbindet:\n\n- Suche\n- Antwort\n\nNutze `Quellen`.",
  },
  {
    question: "Ist das sicher?",
    answer: "Nur mit [geprüften Links](https://example.org/docs).",
  },
];

test("creates a Markdown export for one exchange or a complete session", () => {
  const single = createMarkdownExport([conversation[0]], {
    title: "Aktuelle Antwort",
    generatedAt: timestamp,
  });
  assert.match(single, /^# Aktuelle Antwort/m);
  assert.match(single, /## Frage 1\n\nWas ist \*\*RAG\*\*\?/);
  assert.match(single, /## Antwort 1/);
  assert.doesNotMatch(single, /Frage 2/);

  const session = createMarkdownExport(conversation, {
    generatedAt: timestamp,
  });
  assert.match(session, /## Frage 2/);
  assert.match(session, /## Antwort 2/);
  assert.match(session, /\n---\n/);
});

test("creates a standalone, readable HTML document without executing input HTML", () => {
  const html = createHtmlExport(
    [
      {
        question: '<img src=x onerror="alert(1)"> **Frage**',
        answer:
          '<script>alert("x")</script>\n\n- sicher\n\n[unsicher](javascript:alert(1))',
      },
    ],
    { title: "<Test>", generatedAt: timestamp },
  );

  assert.match(html, /^<!doctype html>/);
  assert.match(html, /<meta name="viewport"/);
  assert.match(html, /<strong>Frage<\/strong>/);
  assert.match(html, /<li>sicher<\/li>/);
  assert.match(html, /&lt;img src=x onerror=&quot;alert\(1\)&quot;&gt;/);
  assert.match(html, /&lt;script&gt;alert\(&quot;x&quot;\)&lt;\/script&gt;/);
  assert.doesNotMatch(html, /<script[\s>]/i);
  assert.doesNotMatch(html, /<img[\s>]/i);
  assert.doesNotMatch(html, /href="javascript:/i);
  assert.doesNotMatch(html, /openai|chatgpt|groq|gpt-oss/i);
});

test("prepares deterministic filenames for downloadable exports", () => {
  const markdown = prepareChatExport(conversation, "md", {
    fileName: "Meine Sitzung.md",
    generatedAt: timestamp,
  });
  assert.equal(markdown.fileName, "Meine-Sitzung.md");
  assert.equal(markdown.mimeType, "text/markdown;charset=utf-8");

  const html = prepareChatExport(conversation, "html", {
    fileName: "Antwort.html",
    generatedAt: timestamp,
  });
  assert.equal(html.fileName, "Antwort.html");
  assert.equal(html.mimeType, "text/html;charset=utf-8");
});

test("rejects empty exports and keeps browser-only side effects out of SSR", () => {
  assert.throws(() => createMarkdownExport([]), RangeError);
  assert.throws(
    () =>
      downloadChatExport([conversation[0]], "html", {
        generatedAt: timestamp,
      }),
    /nur im Browser/,
  );
});

test("preserves sparse citation numbers in standalone source lists", () => {
  const html = createHtmlExport(
    [
      {
        question: "Welche Belege gelten?",
        answer: [
          "Die Aussage folgt aus [2] und [4].",
          "",
          "### Quellen",
          "",
          "- [2] Zweite Quelle",
          "- [4] Vierte Quelle",
        ].join("\n"),
      },
    ],
    { generatedAt: timestamp },
  );

  assert.match(html, /<ul><li>\[2\] Zweite Quelle<\/li><li>\[4\] Vierte Quelle<\/li><\/ul>/);
  assert.doesNotMatch(html, /<ol>/);
});
