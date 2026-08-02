"use client";

import { FormEvent, useMemo, useState } from "react";

type Message = {
  id: number;
  role: "assistant" | "user";
  text: string;
  citations?: Array<{ label: string; detail: string }>;
  learned?: boolean;
};

const initialMessages: Message[] = [
  {
    id: 1,
    role: "assistant",
    text: "Guten Morgen. Ich beantworte Fragen aus der gepflegten TrainWiki-Wissensbasis. Jede sachliche Aussage bleibt auf ihre Rohquelle zurückführbar. Was möchtest du untersuchen?",
  },
  {
    id: 2,
    role: "user",
    text: "Was unterscheidet unser Wiki von einem klassischen RAG-System?",
  },
  {
    id: 3,
    role: "assistant",
    text: "Klassisches RAG setzt die Antwort bei jeder Frage erneut aus Rohtext-Fragmenten zusammen. TrainWiki integriert neue Quellen vorher in dauerhafte, verlinkte Themenseiten. Die Suche arbeitet anschließend auf dieser bereits verdichteten Wissensschicht und greift nur bei Lücken auf Rohquellen zurück. So können geprüfte Synthesen, Widersprüche und Querverbindungen über Gespräche hinweg erhalten bleiben.",
    citations: [
      { label: "[1]", detail: "llm-wiki.md · Grundprinzip" },
      { label: "[2]", detail: "spec.md · Retrievalstrategie" },
    ],
    learned: true,
  },
];

const suggestions = [
  "Welche Quellen widersprechen sich?",
  "Was wurde zuletzt neu gelernt?",
  "Fasse den aktuellen Wissensstand zusammen.",
];

export function ChatWorkspace() {
  const [messages, setMessages] = useState(initialMessages);
  const [draft, setDraft] = useState("");
  const [feedback, setFeedback] = useState<"up" | "down" | null>(null);

  const nextId = useMemo(
    () => Math.max(...messages.map((message) => message.id)) + 1,
    [messages],
  );

  function submitQuestion(event: FormEvent) {
    event.preventDefault();
    const question = draft.trim();
    if (!question) return;

    setMessages((current) => [
      ...current,
      { id: nextId, role: "user", text: question },
      {
        id: nextId + 1,
        role: "assistant",
        text: "Diese Oberfläche ist bereits interaktiv, aber noch nicht mit Groq und dem DSPy-Programm verbunden. In der produktiven Stufe würde ich jetzt passende Wiki-Seiten abrufen, die Antwort belegen und eine neue Synthese als prüfbaren Lernvorschlag ablegen.",
        citations: [
          { label: "Plan", detail: "spec.md · Phase 3 und 4" },
        ],
      },
    ]);
    setDraft("");
  }

  return (
    <main className="chat-layout">
      <aside className="chat-sidebar" aria-label="Unterhaltungen und Wiki-Status">
        <button className="new-chat-button" type="button">
          <span aria-hidden="true">＋</span> Neue Unterhaltung
        </button>

        <section className="sidebar-section">
          <p className="eyebrow">Heute</p>
          <button className="history-item is-selected" type="button">
            <span>LLM-Wiki und RAG</span>
            <small>vor 8 Min.</small>
          </button>
          <button className="history-item" type="button">
            <span>Quellenlage analysieren</span>
            <small>vor 2 Std.</small>
          </button>
        </section>

        <section className="sidebar-section knowledge-health">
          <div className="section-heading">
            <p className="eyebrow">Wissensbasis</p>
            <span className="health-score">96%</span>
          </div>
          <div className="health-track" aria-label="Wiki-Gesundheit 96 Prozent">
            <span />
          </div>
          <dl>
            <div>
              <dt>Wiki-Seiten</dt>
              <dd>438</dd>
            </div>
            <div>
              <dt>Rohquellen</dt>
              <dd>162</dd>
            </div>
            <div>
              <dt>Offene Konflikte</dt>
              <dd>3</dd>
            </div>
          </dl>
          <p className="demo-label">Beispieldaten für den UI-Prototyp</p>
        </section>
      </aside>

      <section className="conversation-shell">
        <header className="conversation-header">
          <div>
            <p className="eyebrow">Quellengebundener Dialog</p>
            <h1>Frag dein wachsendes Wissen.</h1>
          </div>
          <div className="freshness-badge">
            <span className="status-dot" aria-hidden="true" />
            Stand: heute, 06:42
          </div>
        </header>

        <div className="conversation-stream" aria-live="polite">
          {messages.map((message) => (
            <article className={`message message-${message.role}`} key={message.id}>
              <div className="avatar" aria-hidden="true">
                {message.role === "assistant" ? "TW" : "DU"}
              </div>
              <div className="message-content">
                <div className="message-meta">
                  <strong>{message.role === "assistant" ? "TrainWiki" : "Du"}</strong>
                  {message.role === "assistant" && <span>belegt</span>}
                </div>
                <p>{message.text}</p>
                {message.citations && (
                  <div className="citation-row" aria-label="Quellen">
                    {message.citations.map((citation) => (
                      <button key={citation.detail} type="button" title={citation.detail}>
                        {citation.label} {citation.detail}
                      </button>
                    ))}
                  </div>
                )}
                {message.learned && (
                  <div className="learning-note">
                    <span aria-hidden="true">↗</span>
                    Neue Verbindung als Lernvorschlag vorgemerkt
                  </div>
                )}
              </div>
            </article>
          ))}
        </div>

        <div className="chat-composer-wrap">
          <div className="suggestion-row" aria-label="Vorgeschlagene Fragen">
            {suggestions.map((suggestion) => (
              <button key={suggestion} onClick={() => setDraft(suggestion)} type="button">
                {suggestion}
              </button>
            ))}
          </div>
          <form className="chat-composer" onSubmit={submitQuestion}>
            <label className="sr-only" htmlFor="chat-question">
              Frage an TrainWiki
            </label>
            <textarea
              id="chat-question"
              onChange={(event) => setDraft(event.target.value)}
              placeholder="Frage stellen oder eine Verbindung untersuchen …"
              rows={2}
              value={draft}
            />
            <div className="composer-footer">
              <span>Antwort nur mit belastbaren Quellen</span>
              <button aria-label="Frage absenden" type="submit">
                Senden <span aria-hidden="true">↗</span>
              </button>
            </div>
          </form>
          <div className="answer-feedback">
            <span>War die letzte Antwort hilfreich?</span>
            <button
              aria-pressed={feedback === "up"}
              className={feedback === "up" ? "is-selected" : ""}
              onClick={() => setFeedback("up")}
              type="button"
            >
              Ja
            </button>
            <button
              aria-pressed={feedback === "down"}
              className={feedback === "down" ? "is-selected" : ""}
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
