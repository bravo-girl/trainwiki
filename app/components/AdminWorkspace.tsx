"use client";

import { ChangeEvent, DragEvent, FormEvent, useState } from "react";

type QueueItem = {
  id: number;
  name: string;
  type: string;
  size: string;
  status: "Wartet" | "Konvertierung" | "Wiki-Prüfung" | "Veröffentlicht";
};

type ProposalState = "Offen" | "In Prüfung" | "Verworfen";

type AdminWorkspaceProps = {
  adminName: string;
};

const MAX_UPLOAD_BYTES = 20 * 1024 * 1024;
const SUPPORTED_EXTENSIONS = new Set([
  "pdf",
  "docx",
  "xlsx",
  "xml",
  "json",
  "yaml",
  "yml",
  "html",
  "htm",
  "md",
  "markdown",
]);

const initialQueue: QueueItem[] = [
  {
    id: 1,
    name: "strategie-2026.pdf",
    type: "PDF",
    size: "4,8 MB",
    status: "Konvertierung",
  },
  {
    id: 2,
    name: "produktdaten.xlsx",
    type: "XLSX",
    size: "720 KB",
    status: "Wiki-Prüfung",
  },
  {
    id: 3,
    name: "interview-notizen.md",
    type: "Markdown",
    size: "38 KB",
    status: "Veröffentlicht",
  },
];

const statusClass: Record<QueueItem["status"], string> = {
  Wartet: "status-waiting",
  Konvertierung: "status-processing",
  "Wiki-Prüfung": "status-review",
  Veröffentlicht: "status-published",
};

export function AdminWorkspace({ adminName }: AdminWorkspaceProps) {
  const [queue, setQueue] = useState(initialQueue);
  const [url, setUrl] = useState("");
  const [dragging, setDragging] = useState(false);
  const [notice, setNotice] = useState(
    "Interaktiver Prototyp: Uploads werden lokal vorgemerkt, noch nicht übertragen.",
  );
  const [proposals, setProposals] = useState<
    Array<{ id: number; title: string; source: string; state: ProposalState }>
  >([
    {
      id: 1,
      title: "Wissensbasis als geprüfte Antwortgrundlage",
      source: "Unterhaltung · Wissensbasis und Suche",
      state: "Offen",
    },
    {
      id: 2,
      title: "Vertrauensstufen für automatisch gelernte Aussagen",
      source: "Unterhaltung · Quellenlage analysieren",
      state: "Offen",
    },
  ]);

  const adminInitials = adminName
    .split(/\s+/)
    .filter(Boolean)
    .slice(0, 2)
    .map((part) => part[0]?.toUpperCase())
    .join("") || "AD";

  function addFiles(files: FileList | File[]) {
    const candidates = Array.from(files);
    const accepted = candidates.filter((file) => {
      const extension = file.name.split(".").pop()?.toLowerCase() ?? "";
      return SUPPORTED_EXTENSIONS.has(extension) && file.size <= MAX_UPLOAD_BYTES;
    });
    const next = accepted.map((file, index) => ({
      id: Date.now() + index,
      name: file.name,
      type: file.name.split(".").pop()?.toUpperCase() || "DATEI",
      size: formatBytes(file.size),
      status: "Wartet" as const,
    }));
    if (next.length) setQueue((current) => [...next, ...current]);
    const rejected = candidates.length - accepted.length;
    setNotice(
      `${next.length} ${next.length === 1 ? "Datei wurde" : "Dateien wurden"} vorgemerkt.${rejected ? ` ${rejected} Datei(en) wegen Format oder 20-MiB-Limit abgewiesen.` : ""}`,
    );
  }

  function onFileChange(event: ChangeEvent<HTMLInputElement>) {
    if (event.target.files?.length) addFiles(event.target.files);
  }

  function onDrop(event: DragEvent<HTMLLabelElement>) {
    event.preventDefault();
    setDragging(false);
    if (event.dataTransfer.files.length) addFiles(event.dataTransfer.files);
  }

  function addUrl(event: FormEvent) {
    event.preventDefault();
    const value = url.trim();
    if (!value) return;
    setQueue((current) => [
      {
        id: Date.now(),
        name: value,
        type: "WEB",
        size: "Link",
        status: "Wartet",
      },
      ...current,
    ]);
    setUrl("");
    setNotice("Webquelle wurde für Abruf, Bereinigung und Markdown-Konvertierung vorgemerkt.");
  }

  function decideProposal(id: number, decision: "In Prüfung" | "Verworfen") {
    setProposals((current) =>
      current.map((proposal) =>
        proposal.id === id ? { ...proposal, state: decision } : proposal,
      ),
    );
    setNotice(
      decision === "In Prüfung"
        ? "Prüfung vorgemerkt: Vor einer Freigabe müssen Änderung, Belege und exakte Version geprüft werden."
        : "Lernvorschlag wurde verworfen und bleibt im Audit-Protokoll sichtbar.",
    );
  }

  async function signOut() {
    await fetch("/api/admin/logout", { method: "POST" });
    window.location.assign("/admin");
  }

  return (
    <main className="admin-layout">
      <aside className="admin-sidebar" aria-label="Admin-Navigation">
        <div>
          <p className="eyebrow">Workspace</p>
          <h2>Wissensbetrieb</h2>
        </div>
        <nav>
          <a className="is-active" href="#eingang">
            <span aria-hidden="true">01</span> Eingang
          </a>
          <a href="#lernkurve">
            <span aria-hidden="true">02</span> Lernkurve
          </a>
          <a href="#gesundheit">
            <span aria-hidden="true">03</span> Wiki-Gesundheit
          </a>
          <a href="#pipeline">
            <span aria-hidden="true">04</span> Pipeline
          </a>
        </nav>
        <div className="admin-identity">
          <span className="avatar">{adminInitials}</span>
          <span>
            <strong>{adminName}</strong>
            <small>Administratorin</small>
          </span>
        </div>
      </aside>

      <section className="admin-main">
        <header className="admin-heading">
          <div>
            <p className="eyebrow">Kontrollierte Wissenspflege</p>
            <h1>Quellen rein. Wissen wächst.</h1>
            <p>
              Neue Dokumente werden normalisiert, belegt und erst nach Prüfung
              Teil des kanonischen Wikis.
            </p>
          </div>
          <div className="admin-heading-actions">
            <button className="outline-button" type="button">
              Prüfung starten
            </button>
            <button className="text-button" onClick={signOut} type="button">
              Abmelden
            </button>
          </div>
        </header>

        <div className="prototype-notice" role="status">
          <span aria-hidden="true">i</span>
          {notice}
        </div>

        <section className="metric-grid" aria-label="Systemkennzahlen">
          <article>
            <span>Rohquellen</span>
            <strong>162</strong>
            <small>+12 diesen Monat</small>
          </article>
          <article>
            <span>Wiki-Seiten</span>
            <strong>438</strong>
            <small>2,7 Seiten je Quelle</small>
          </article>
          <article>
            <span>Offene Lernvorschläge</span>
            <strong>{proposals.filter((item) => item.state === "Offen").length}</strong>
            <small>menschliche Freigabe nötig</small>
          </article>
          <article>
            <span>Quellenabdeckung</span>
            <strong>96%</strong>
            <small>4 Seiten ohne Primärbeleg</small>
          </article>
        </section>

        <section className="admin-section" id="eingang">
          <div className="section-title-row">
            <div>
              <p className="eyebrow">01 · Eingang</p>
              <h2>Rohdaten hinzufügen</h2>
            </div>
            <span className="format-count">8 Formate + Web</span>
          </div>

          <div className="ingest-grid">
            <label
              className={`drop-zone ${dragging ? "is-dragging" : ""}`}
              onDragEnter={() => setDragging(true)}
              onDragLeave={() => setDragging(false)}
              onDragOver={(event) => event.preventDefault()}
              onDrop={onDrop}
            >
              <input
                accept=".pdf,.docx,.xlsx,.xml,.json,.yaml,.yml,.html,.htm,.md,.markdown,text/html,text/markdown"
                multiple
                onChange={onFileChange}
                type="file"
              />
              <span className="upload-mark" aria-hidden="true">↑</span>
              <strong>Dateien hier ablegen</strong>
              <p>oder klicken, um mehrere Quellen auszuwählen</p>
              <div className="format-list">
                {['PDF', 'DOCX', 'XLSX', 'XML', 'JSON', 'YAML', 'HTML', 'MD'].map((format) => (
                  <span key={format}>{format}</span>
                ))}
              </div>
            </label>

            <form className="url-ingest" onSubmit={addUrl}>
              <span className="link-mark" aria-hidden="true">↗</span>
              <strong>Website oder Weblink</strong>
              <p>Die externe Pipeline lädt den Inhalt, entfernt Navigation und erzeugt kanonisches Markdown.</p>
              <label htmlFor="source-url">Öffentliche URL</label>
              <input
                id="source-url"
                onChange={(event) => setUrl(event.target.value)}
                placeholder="https://…"
                type="url"
                value={url}
              />
              <button type="submit">Link vormerken</button>
            </form>
          </div>
        </section>

        <section className="admin-section" id="pipeline">
          <div className="section-title-row">
            <div>
              <p className="eyebrow">Verarbeitung</p>
              <h2>Aktuelle Warteschlange</h2>
            </div>
            <button className="text-button" type="button">Alle Vorgänge</button>
          </div>

          <div className="pipeline-strip" aria-label="Ingest-Pipeline">
            {[
              ["1", "Ablegen"],
              ["2", "In Markdown"],
              ["3", "Claims prüfen"],
              ["4", "Änderungen prüfen"],
              ["5", "Veröffentlichen"],
            ].map(([number, label], index) => (
              <div className="pipeline-step" key={number}>
                <span>{number}</span>
                <strong>{label}</strong>
                {index < 4 && <i aria-hidden="true">→</i>}
              </div>
            ))}
          </div>

          <div className="queue-table" role="table" aria-label="Verarbeitungswarteschlange">
            <div className="queue-row queue-head" role="row">
              <span role="columnheader">Quelle</span>
              <span role="columnheader">Typ</span>
              <span role="columnheader">Größe</span>
              <span role="columnheader">Status</span>
            </div>
            {queue.map((item) => (
              <div className="queue-row" role="row" key={item.id}>
                <strong role="cell" title={item.name}>{item.name}</strong>
                <span role="cell">{item.type}</span>
                <span role="cell">{item.size}</span>
                <span className={`queue-status ${statusClass[item.status]}`} role="cell">
                  {item.status}
                </span>
              </div>
            ))}
          </div>
        </section>

        <div className="admin-two-column">
          <section className="admin-section" id="lernkurve">
            <div className="section-title-row">
              <div>
                <p className="eyebrow">02 · Lernkurve</p>
                <h2>Vorschläge aus Chats</h2>
              </div>
            </div>
            <div className="proposal-list">
              {proposals.map((proposal) => (
                <article className="proposal-card" key={proposal.id}>
                  <div>
                    <span className="proposal-state">{proposal.state}</span>
                    <h3>{proposal.title}</h3>
                    <p>{proposal.source}</p>
                  </div>
                  {proposal.state === "Offen" ? (
                    <div className="proposal-actions">
                      <button onClick={() => decideProposal(proposal.id, "Verworfen")} type="button">
                        Verwerfen
                      </button>
                      <button onClick={() => decideProposal(proposal.id, "In Prüfung")} type="button">
                        Änderung &amp; Belege prüfen
                      </button>
                    </div>
                  ) : (
                    <strong className="decision-label">{proposal.state}</strong>
                  )}
                </article>
              ))}
            </div>
          </section>

          <section className="admin-section health-panel" id="gesundheit">
            <div>
              <p className="eyebrow">03 · Wiki-Gesundheit</p>
              <h2>Pflegezustand</h2>
            </div>
            <div
              aria-label="Gesundheit 96 Prozent"
              aria-valuemax={100}
              aria-valuemin={0}
              aria-valuenow={96}
              className="health-ring"
              role="progressbar"
            >
              <strong>96</strong>
              <span>/ 100</span>
            </div>
            <ul>
              <li><span className="check">✓</span> Alle internen Links auflösbar</li>
              <li><span className="check">✓</span> 158 Quellen vollständig belegt</li>
              <li><span className="warn">!</span> 3 widersprüchliche Aussagen</li>
              <li><span className="warn">!</span> 4 verwaiste Themenseiten</li>
            </ul>
            <p className="demo-label">Beispieldaten für den UI-Prototyp</p>
          </section>
        </div>
      </section>
    </main>
  );
}

function formatBytes(bytes: number) {
  if (bytes < 1024) return `${bytes} B`;
  if (bytes < 1024 * 1024) return `${Math.round(bytes / 1024)} KB`;
  return `${(bytes / (1024 * 1024)).toFixed(1).replace(".", ",")} MB`;
}
