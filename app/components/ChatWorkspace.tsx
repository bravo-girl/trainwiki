"use client";

import { FormEvent, useRef, useState } from "react";

const MODEL = "openai/gpt-oss-20b";
const MAX_QUESTION_CHARS = 3_000;
const MAX_HISTORY_MESSAGES = 8;

type Message = {
  id: number;
  role: "assistant" | "user";
  text: string;
  evidenceStatus?: string;
  includeInContext?: boolean;
};

type ChatResponse = {
  answer?: string;
  error?: string;
  model?: string;
};

const welcomeMessage: Message = {
  id: 1,
  role: "assistant",
  evidenceStatus: "Groq · GPT-OSS 20B",
  text: "Hallo! Ich bin TrainWiki. Meine Antworten werden öffentlich und ohne Anmeldung über Groq mit GPT-OSS 20B erzeugt. Was möchtest du wissen?",
  includeInContext: false,
};

const suggestions = [
  "Erkläre den Unterschied zwischen einem Wiki und RAG.",
  "Wie kann Wissen zuverlässig aktualisiert werden?",
  "Fasse deine Antwort in drei Punkten zusammen.",
];

export function ChatWorkspace() {
  const [messages, setMessages] = useState<Message[]>([welcomeMessage]);
  const [draft, setDraft] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [feedback, setFeedback] = useState<"up" | "down" | null>(null);
  const nextId = useRef(2);

  function resetConversation() {
    if (isLoading) return;
    setMessages([welcomeMessage]);
    setDraft("");
    setError(null);
    setFeedback(null);
    nextId.current = 2;
  }

  async function submitQuestion(event: FormEvent) {
    event.preventDefault();
    const question = draft.trim();
    if (!question || isLoading) return;

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
    setFeedback(null);
    setIsLoading(true);

    try {
      const response = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ question, history }),
      });
      const payload = (await response.json().catch(() => ({}))) as ChatResponse;
      const answer = payload.answer;

      if (!response.ok || typeof answer !== "string") {
        throw new Error(payload.error || "Groq konnte die Frage nicht beantworten.");
      }

      setMessages((current) => [
        ...current,
        {
          id: nextId.current++,
          role: "assistant",
          evidenceStatus: payload.model === MODEL ? "Groq · GPT-OSS 20B" : "Groq",
          text: answer,
          includeInContext: true,
        },
      ]);
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
    <main className="chat-layout">
      <aside className="chat-sidebar" aria-label="Chat-Informationen">
        <button className="new-chat-button" disabled={isLoading} onClick={resetConversation} type="button">
          <span aria-hidden="true">＋</span> Neue Unterhaltung
        </button>

        <section className="sidebar-section">
          <p className="eyebrow">Öffentlicher Chat</p>
          <div className="history-item is-selected">
            <span>Aktuelle Unterhaltung</span>
            <small>nur in diesem Browserfenster</small>
          </div>
        </section>

        <section className="sidebar-section knowledge-health">
          <div className="section-heading">
            <p className="eyebrow">LLM-Verbindung</p>
            <span className="health-score">Groq</span>
          </div>
          <dl>
            <div>
              <dt>Modell</dt>
              <dd>GPT-OSS 20B</dd>
            </div>
            <div>
              <dt>Anmeldung</dt>
              <dd>keine</dd>
            </div>
            <div>
              <dt>API-Schlüssel</dt>
              <dd>serverseitig</dd>
            </div>
          </dl>
          <p className="demo-label">Direkte Server-Anbindung – keine ChatGPT-Abhängigkeit</p>
        </section>
      </aside>

      <section className="conversation-shell">
        <header className="conversation-header">
          <div>
            <p className="eyebrow">Öffentlicher Groq-Dialog</p>
            <h1>Frag GPT-OSS 20B.</h1>
          </div>
          <div className="freshness-badge">
            <span className="status-dot" aria-hidden="true" />
            Groq · ohne Anmeldung
          </div>
        </header>

        <div className="conversation-stream" aria-busy={isLoading} aria-live="polite">
          {messages.map((message) => (
            <article className={`message message-${message.role}`} key={message.id}>
              <div className="avatar" aria-hidden="true">
                {message.role === "assistant" ? "TW" : "DU"}
              </div>
              <div className="message-content">
                <div className="message-meta">
                  <strong>{message.role === "assistant" ? "TrainWiki" : "Du"}</strong>
                  {message.role === "assistant" && message.evidenceStatus && (
                    <span>{message.evidenceStatus}</span>
                  )}
                </div>
                <p style={{ whiteSpace: "pre-wrap" }}>{message.text}</p>
              </div>
            </article>
          ))}

          {isLoading && (
            <article className="message message-assistant" role="status">
              <div className="avatar" aria-hidden="true">TW</div>
              <div className="message-content">
                <div className="message-meta">
                  <strong>TrainWiki</strong>
                  <span>Groq · GPT-OSS 20B</span>
                </div>
                <p>Groq erzeugt die Antwort …</p>
              </div>
            </article>
          )}

          {error && (
            <article className="message message-assistant" role="alert">
              <div className="avatar" aria-hidden="true">!</div>
              <div className="message-content">
                <div className="message-meta">
                  <strong>Verbindungsfehler</strong>
                  <span>nicht gesendet</span>
                </div>
                <p>{error}</p>
              </div>
            </article>
          )}
        </div>

        <div className="chat-composer-wrap">
          <div className="suggestion-row" aria-label="Vorgeschlagene Fragen">
            {suggestions.map((suggestion) => (
              <button
                disabled={isLoading}
                key={suggestion}
                onClick={() => setDraft(suggestion)}
                type="button"
              >
                {suggestion}
              </button>
            ))}
          </div>
          <form className="chat-composer" onSubmit={submitQuestion}>
            <label className="sr-only" htmlFor="chat-question">
              Frage an TrainWiki
            </label>
            <textarea
              disabled={isLoading}
              id="chat-question"
              maxLength={MAX_QUESTION_CHARS}
              onChange={(event) => setDraft(event.target.value)}
              placeholder="Frage an GPT-OSS 20B stellen …"
              rows={2}
              value={draft}
            />
            <div className="composer-footer">
              <span>{draft.length}/{MAX_QUESTION_CHARS} · Modell: {MODEL}</span>
              <button disabled={isLoading || !draft.trim()} type="submit">
                {isLoading ? "Warten …" : "Senden"} <span aria-hidden="true">↗</span>
              </button>
            </div>
          </form>
          <div className="answer-feedback">
            <span>War die letzte Antwort hilfreich?</span>
            <button
              aria-pressed={feedback === "up"}
              className={feedback === "up" ? "is-selected" : ""}
              disabled={isLoading}
              onClick={() => setFeedback("up")}
              type="button"
            >
              Ja
            </button>
            <button
              aria-pressed={feedback === "down"}
              className={feedback === "down" ? "is-selected" : ""}
              disabled={isLoading}
              onClick={() => setFeedback("down")}
              type="button"
            >
              Nein
            </button>
          </div>
        </div>
      </section>
    </main>
  );
}
