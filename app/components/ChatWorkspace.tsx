"use client";

import { ChangeEvent, FormEvent, useMemo, useRef, useState } from "react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import {
  downloadExchange,
  downloadSession,
  type ChatExchange,
  type ChatExportFormat,
} from "../../lib/chat-export";
import {
  extractChatAttachment,
  MAX_CHAT_ATTACHMENTS,
  type ExtractedChatAttachment,
} from "../../lib/client-document-extraction";

const MAX_QUESTION_CHARS = 3_000;
const MAX_HISTORY_MESSAGES = 8;
type ChatSource = {
  number: number;
  title: string;
  heading: string;
  canonicalUrl?: string;
};

type Message = {
  id: number;
  role: "assistant" | "user";
  text: string;
  includeInContext?: boolean;
  replyTo?: number;
  sources?: ChatSource[];
};

type ChatResponse = {
  answer?: string;
  error?: string;
  sources?: unknown;
};

function MarkdownAnswer({ children }: { children: string }) {
  return (
    <div className="markdown-message">
      <ReactMarkdown
        components={{
          a({ children: linkChildren, href }) {
            const isExternal = /^https?:\/\//i.test(href ?? "");
            return (
              <a
                href={href}
                rel={isExternal ? "noopener noreferrer nofollow" : undefined}
                target={isExternal ? "_blank" : undefined}
              >
                {linkChildren}
              </a>
            );
          },
        }}
        remarkPlugins={[remarkGfm]}
        skipHtml
      >
        {children}
      </ReactMarkdown>
    </div>
  );
}

function collectExchanges(messages: readonly Message[]): ChatExchange[] {
  const questions = new Map(
    messages
      .filter((message) => message.role === "user")
      .map((message) => [message.id, message.text]),
  );

  return messages.flatMap((message) => {
    if (message.role !== "assistant" || message.replyTo === undefined) return [];
    const question = questions.get(message.replyTo);
    if (!question) return [];
    const sourceLines = (message.sources ?? []).map((source) => {
      const heading = source.heading ? ` — ${source.heading}` : "";
      const url = source.canonicalUrl ? ` — ${source.canonicalUrl}` : "";
      return `- [${source.number}] ${source.title}${heading}${url}`;
    });
    const answer = sourceLines.length
      ? `${message.text}\n\n### Quellen\n\n${sourceLines.join("\n")}`
      : message.text;
    return [{ question, answer }];
  });
}

function cleanPublicLabel(value: string) {
  return value
    .normalize("NFKC")
    .replace(/[\u0000-\u001f\u007f]/g, " ")
    .replace(/\s+/g, " ")
    .trim()
    .slice(0, 300);
}

function parseChatSources(value: unknown): ChatSource[] {
  if (!Array.isArray(value)) return [];

  return value.flatMap((item) => {
    if (!item || typeof item !== "object") return [];
    const candidate = item as Record<string, unknown>;
    if (
      typeof candidate.number !== "number" ||
      !Number.isInteger(candidate.number) ||
      candidate.number < 1 ||
      typeof candidate.title !== "string" ||
      typeof candidate.heading !== "string"
    ) {
      return [];
    }

    let canonicalUrl: string | undefined;
    if (typeof candidate.canonicalUrl === "string") {
      try {
        const parsed = new URL(candidate.canonicalUrl);
        if (
          (parsed.protocol === "https:" || parsed.protocol === "http:") &&
          !parsed.username &&
          !parsed.password
        ) {
          canonicalUrl = parsed.href;
        }
      } catch {
        canonicalUrl = undefined;
      }
    }

    return [{
      number: candidate.number,
      title: cleanPublicLabel(candidate.title),
      heading: cleanPublicLabel(candidate.heading),
      ...(canonicalUrl ? { canonicalUrl } : {}),
    }];
  });
}

function ExportButtons({
  exchange,
  session,
  onError,
}: {
  exchange: ChatExchange;
  session: readonly ChatExchange[];
  onError: (message: string) => void;
}) {
  function run(scope: "exchange" | "session", format: ChatExportFormat) {
    try {
      onError("");
      if (scope === "exchange") {
        downloadExchange(exchange, format, {
          title: "TrainWiki – Frage und Antwort",
          fileName: "trainwiki-antwort",
        });
      } else {
        downloadSession(session, format, {
          title: "TrainWiki – aktuelle Sitzung",
          fileName: "trainwiki-sitzung",
        });
      }
    } catch (exportError) {
      onError(
        exportError instanceof Error
          ? exportError.message
          : "Der Export konnte nicht erstellt werden.",
      );
    }
  }

  return (
    <details className="export-menu">
      <summary>Exportieren</summary>
      <div className="export-groups">
        <div>
          <span>Diese Antwort</span>
          <div className="export-actions">
            {(["md", "html", "pdf"] as const).map((format) => (
              <button
                key={format}
                onClick={() => run("exchange", format)}
                title={format === "pdf" ? "Als PDF über den Druckdialog speichern" : undefined}
                type="button"
              >
                {format.toUpperCase()}
              </button>
            ))}
          </div>
        </div>
        <div>
          <span>Aktuelle Sitzung</span>
          <div className="export-actions">
            {(["md", "html", "pdf"] as const).map((format) => (
              <button
                key={format}
                onClick={() => run("session", format)}
                title={format === "pdf" ? "Als PDF über den Druckdialog speichern" : undefined}
                type="button"
              >
                {format.toUpperCase()}
              </button>
            ))}
          </div>
        </div>
      </div>
    </details>
  );
}

function AnswerSources({ sources }: { sources: readonly ChatSource[] }) {
  if (sources.length === 0) return null;

  return (
    <details className="answer-sources">
      <summary>{sources.length === 1 ? "1 Quellenabschnitt" : `${sources.length} Quellenabschnitte`}</summary>
      <ol>
        {sources.map((source) => (
          <li key={`${source.number}-${source.title}-${source.heading}`}>
            <span className="source-number">[{source.number}]</span>
            <span>
              {source.canonicalUrl ? (
                <a href={source.canonicalUrl} rel="noopener noreferrer nofollow" target="_blank">
                  {source.title}
                </a>
              ) : (
                <strong>{source.title}</strong>
              )}
              {source.heading && <small>{source.heading}</small>}
            </span>
          </li>
        ))}
      </ol>
    </details>
  );
}

export function ChatWorkspace({ initialSuggestions }: { initialSuggestions: readonly string[] }) {
  const [messages, setMessages] = useState<Message[]>([]);
  const [draft, setDraft] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [isExtracting, setIsExtracting] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [attachments, setAttachments] = useState<ExtractedChatAttachment[]>([]);
  const [addAttachmentsToWiki, setAddAttachmentsToWiki] = useState(true);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const nextId = useRef(1);
  const exchanges = useMemo(() => collectExchanges(messages), [messages]);

  async function selectAttachments(event: ChangeEvent<HTMLInputElement>) {
    const files = Array.from(event.target.files ?? []);
    event.target.value = "";
    if (attachments.length + files.length > MAX_CHAT_ATTACHMENTS) {
      setError(`Pro Frage sind höchstens ${MAX_CHAT_ATTACHMENTS} Dokumente möglich.`);
      return;
    }
    setIsExtracting(true);
    setError(null);
    try {
      const extracted = await Promise.all(files.map(extractChatAttachment));
      setAttachments((current) => {
        const known = new Set(current.map((item) => item.rawSha256));
        return [...current, ...extracted.filter((item) => !known.has(item.rawSha256))];
      });
    } catch (attachmentError) {
      setError(attachmentError instanceof Error ? attachmentError.message : "Dokument konnte nicht gelesen werden.");
    } finally {
      setIsExtracting(false);
    }
  }

  async function submitQuestion(event: FormEvent) {
    event.preventDefault();
    const question = draft.trim();
    if (!question || isLoading || isExtracting) return;

    const userMessage: Message = {
      id: nextId.current++,
      role: "user",
      text: question,
      includeInContext: true,
    };
    const history = messages
      .filter((message) => message.includeInContext)
      .slice(-MAX_HISTORY_MESSAGES)
      .map((message) => ({ role: message.role, content: message.text }));

    setMessages((current) => [...current, userMessage]);
    setDraft("");
    setError(null);
    setIsLoading(true);

    try {
      const turnId = crypto.randomUUID();
      const response = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ question, history, turnId, attachments, addAttachmentsToWiki }),
      });
      const payload = (await response.json().catch(() => ({}))) as ChatResponse;
      const answer = payload.answer;

      if (!response.ok || typeof answer !== "string") {
        throw new Error(payload.error || "Die Frage konnte nicht beantwortet werden.");
      }

      setMessages((current) => [
        ...current,
        {
          id: nextId.current++,
          role: "assistant",
          text: answer,
          includeInContext: true,
          replyTo: userMessage.id,
          sources: parseChatSources(payload.sources),
        },
      ]);
      setAttachments([]);
    } catch (requestError) {
      const message =
        requestError instanceof Error
          ? requestError.message
          : "Der Chat ist vorübergehend nicht erreichbar.";
      setMessages((current) =>
        current.map((item) =>
          item.id === userMessage.id ? { ...item, includeInContext: false } : item,
        ),
      );
      setError(message);
    } finally {
      setIsLoading(false);
    }
  }

  return (
    <main className="chat-layout chat-layout-lean">
      <section className="conversation-shell chat-panel">
        <div className="conversation-stream" aria-busy={isLoading} aria-live="polite">
          {messages.map((message) => {
            const exchange =
              message.role === "assistant" && message.replyTo !== undefined
                ? collectExchanges(messages.filter((item) => item.id === message.replyTo || item.id === message.id))[0]
                : undefined;

            return (
              <article className={`message message-${message.role}`} key={message.id}>
                <div className="message-content">
                  <div className="message-meta">
                    <strong>{message.role === "assistant" ? "Antwort" : "Du"}</strong>
                  </div>
                  {message.role === "assistant" ? (
                    <MarkdownAnswer>{message.text}</MarkdownAnswer>
                  ) : (
                    <p>{message.text}</p>
                  )}
                  {message.role === "assistant" && (
                    <AnswerSources sources={message.sources ?? []} />
                  )}
                  {exchange && (
                    <ExportButtons
                      exchange={exchange}
                      onError={(messageText) => setError(messageText || null)}
                      session={exchanges}
                    />
                  )}
                </div>
              </article>
            );
          })}

          {isLoading && (
            <article className="message message-assistant" role="status">
              <div className="message-content">
                <div className="message-meta"><strong>Antwort</strong></div>
                <p className="typing-line"><span aria-hidden="true" />Antwort wird vorbereitet …</p>
              </div>
            </article>
          )}

          {error && (
            <div className="chat-error" role="alert">
              <span>{error}</span>
              <button aria-label="Meldung schließen" onClick={() => setError(null)} type="button">×</button>
            </div>
          )}
        </div>

        <div className="chat-composer-wrap">
          {messages.length === 0 && initialSuggestions.length > 0 && (
            <div className="suggestion-row" aria-label="Zufällige Fragen">
              {initialSuggestions.map((suggestion) => (
                <button key={suggestion} onClick={() => setDraft(suggestion)} type="button">
                  {suggestion}
                </button>
              ))}
            </div>
          )}
          <form className="chat-composer" onSubmit={submitQuestion}>
            <label className="sr-only" htmlFor="chat-question">Frage eingeben</label>
            <textarea
              disabled={isLoading}
              id="chat-question"
              maxLength={MAX_QUESTION_CHARS}
              onChange={(event) => setDraft(event.target.value)}
              placeholder="Frage eingeben …"
              rows={2}
              value={draft}
            />
            {attachments.length > 0 && (
              <div className="attachment-list" aria-label="Ausgewählte Dokumente">
                {attachments.map((attachment) => (
                  <span key={attachment.rawSha256}>
                    {attachment.filename}
                    <button
                      aria-label={`${attachment.filename} entfernen`}
                      onClick={() => setAttachments((current) => current.filter((item) => item.rawSha256 !== attachment.rawSha256))}
                      type="button"
                    >
                      ×
                    </button>
                  </span>
                ))}
              </div>
            )}
            <div className="attachment-controls">
              <input
                accept=".md,.pdf,.html,.htm,.docx,.xlsx"
                disabled={isLoading || isExtracting || attachments.length >= MAX_CHAT_ATTACHMENTS}
                hidden
                multiple
                onChange={selectAttachments}
                ref={fileInputRef}
                type="file"
              />
              <button
                className="attachment-button"
                disabled={isLoading || isExtracting || attachments.length >= MAX_CHAT_ATTACHMENTS}
                onClick={() => fileInputRef.current?.click()}
                type="button"
              >
                {isExtracting ? "Lese Dokumente …" : `Dokumente (${attachments.length}/5)`}
              </button>
              {attachments.length > 0 && (
                <label className="learn-toggle">
                  <input
                    checked={addAttachmentsToWiki}
                    onChange={(event) => setAddAttachmentsToWiki(event.target.checked)}
                    type="checkbox"
                  />
                  Zur Wissensbasis hinzufügen
                </label>
              )}
            </div>
            <div className="composer-footer">
              <button disabled={isLoading || isExtracting || !draft.trim()} type="submit">
                {isLoading ? "Warten …" : "Senden"}
              </button>
            </div>
          </form>
        </div>
      </section>
    </main>
  );
}
