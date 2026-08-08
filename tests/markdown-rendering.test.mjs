import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";
import test from "node:test";
import React from "react";
import { renderToStaticMarkup } from "react-dom/server";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";

test("renders GFM structure while dropping raw HTML", () => {
  const markdown = [
    "## Überschrift",
    "",
    "- **Fetter Punkt**",
    "- `Code`",
    "",
    "| Spalte | Wert |",
    "| --- | --- |",
    "| A | 1 |",
    "",
    "<script>alert('unsafe')</script>",
  ].join("\n");

  const html = renderToStaticMarkup(
    React.createElement(
      ReactMarkdown,
      { remarkPlugins: [remarkGfm], skipHtml: true },
      markdown,
    ),
  );

  assert.match(html, /<h2>Überschrift<\/h2>/);
  assert.match(html, /<ul>/);
  assert.match(html, /<strong>Fetter Punkt<\/strong>/);
  assert.match(html, /<code>Code<\/code>/);
  assert.match(html, /<table>/);
  assert.doesNotMatch(html, /script|unsafe|alert/);
});

test("wires the safe Markdown renderer into assistant messages", async () => {
  const source = await readFile(
    new URL("../app/components/ChatWorkspace.tsx", import.meta.url),
    "utf8",
  );

  assert.match(source, /remarkPlugins=\{\[remarkGfm\]\}/);
  assert.match(source, /skipHtml/);
  assert.match(source, /message\.role === "assistant"/);
  assert.match(source, /noopener noreferrer nofollow/);
});

test("keeps the chat mobile-first and exposes pair and session exports", async () => {
  const [source, css, exportSource] = await Promise.all([
    readFile(
      new URL("../app/components/ChatWorkspace.tsx", import.meta.url),
      "utf8",
    ),
    readFile(new URL("../app/globals.css", import.meta.url), "utf8"),
    readFile(new URL("../lib/chat-export.ts", import.meta.url), "utf8"),
  ]);

  assert.match(source, /downloadExchange/);
  assert.match(source, /downloadSession/);
  assert.doesNotMatch(exportSource, /PDF|format === "pdf"/i);
  assert.match(source, /MAX_CHAT_ATTACHMENTS/);
  assert.match(source, /\.md,\.pdf,\.html,\.htm,\.docx,\.xlsx/);
  assert.match(source, /Zur Wissensbasis hinzufügen/);
  assert.match(source, /Dokumente anfügen/);
  assert.match(source, /repairCommonMojibake/);
  assert.match(css, /\.composer-actions/);
  assert.match(css, /\.composer-actions \.send-button/);
  assert.match(css, /background: var\(--forest\)/);
  assert.match(css, /\.suggestion-row \{[\s\S]*flex-wrap: wrap/);
  assert.doesNotMatch(css, /\.suggestion-row::-webkit-scrollbar/);
  assert.match(source, /useState\(true\)/);
  assert.match(source, /Zufällige Fragen/);
  assert.match(source, /Diese Antwort/);
  assert.match(source, /Aktuelle Sitzung/);
  assert.match(source, /\["md", "html"\]/);
  assert.match(css, /\.chat-layout-lean/);
  assert.ok(
    css.indexOf(".chat-layout-lean") < css.indexOf("@media (min-width: 720px)"),
  );
});
