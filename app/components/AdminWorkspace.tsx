"use client";

import { ChangeEvent, DragEvent, FormEvent, useRef, useState } from "react";
import {
  normalizeSourceUrl,
  normalizedMarkdownSha256,
  sha256Hex,
  sourceIdentityHash,
} from "@/lib/source-identity";

type QueueItem = {
  id: number;
  name: string;
  type: string;
  size: string;
  status: "Wartet" | "Konvertierung" | "Wiki-Prüfung" | "Veröffentlicht";
};

export type AdminLearningProposal = {
  id: string;
  title: string;
  recommendation: string;
  typeLabel: string;
  statusLabel: string;
  frequency: number;
  createdAtLabel: string;
};

type AdminWorkspaceProps = {
  adminName: string;
  learningProposals: AdminLearningProposal[];
  learningProposalCount: number;
};

type PreflightResponse =
  | { status: "new" }
  | { status: "duplicate"; sourceId: string; title: string }
  | { status: "conflict"; error: string }
  | { error: string };

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

export function AdminWorkspace({
  adminName,
  learningProposals,
  learningProposalCount,
}: AdminWorkspaceProps) {
  const [queue, setQueue] = useState(initialQueue);
  const [url, setUrl] = useState("");
  const [dragging, setDragging] = useState(false);
  const [checking, setChecking] = useState(false);
  const locallyQueuedIdentities = useRef(new Set<string>());
  const [notice, setNotice] = useState(
    "Quellen werden vor dem Vormerken serverseitig auf Duplikate geprüft; Dateien werden noch nicht übertragen.",
  );

  const adminInitials = adminName
    .split(/\s+/)
    .filter(Boolean)
    .slice(0, 2)
    .map((part) => part[0]?.toUpperCase())
    .join("") || "AD";

  async function preflight(body: object): Promise<PreflightResponse> {
    const response = await fetch("/api/admin/imports/preflight", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });
    const result = (await response.json()) as PreflightResponse;
    if (!response.ok && !("status" in result && result.status === "conflict")) {
      throw new Error("error" in result ? result.error : "Quellenpruefung fehlgeschlagen.");
    }
    return result;
  }

  async function addFiles(files: FileList | File[]) {
    const candidates = Array.from(files);
    const newFiles: File[] = [];
    let duplicates = 0;
    let failures = 0;
    setChecking(true);
    for (const file of candidates) {
      const extension = file.name.split(".").pop()?.toLowerCase() ?? "";
      if (!SUPPORTED_EXTENSIONS.has(extension) || file.size > MAX_UPLOAD_BYTES) continue;
      try {
        const bytes = new Uint8Array(await file.arrayBuffer());
        const rawSha256 = await sha256Hex(bytes);
        const localKey = `raw_sha256:${rawSha256}`;
        if (locallyQueuedIdentities.current.has(localKey)) {
          duplicates += 1;
          continue;
        }
        const result = await preflight({
          kind: "file",
          filename: file.name,
          sizeBytes: file.size,
          rawSha256,
          ...(extension === "md" || extension === "markdown"
            ? { normalizedSha256: await normalizedMarkdownSha256(new TextDecoder().decode(bytes)) }
            : {}),
        });
        if (result.status !== "new") {
          duplicates += 1;
          continue;
        }
        locallyQueuedIdentities.current.add(localKey);
        newFiles.push(file);
      } catch {
        failures += 1;
      }
    }
    setChecking(false);
    if (newFiles.length) queueFiles(newFiles);
    const rejected = candidates.length - newFiles.length - duplicates - failures;
    setNotice(
      `${newFiles.length} neue Datei(en) vorgemerkt.${duplicates ? ` ${duplicates} Duplikat(e) nicht erneut aufgenommen.` : ""}${rejected ? ` ${rejected} Datei(en) wegen Format oder 20-MiB-Limit abgewiesen.` : ""}${failures ? ` ${failures} Pruefung(en) fehlgeschlagen.` : ""} Dateien wurden noch nicht uebertragen.`,
    );
  }

  function queueFiles(files: FileList | File[]) {
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
    if (event.target.files?.length) void addFiles(event.target.files);
    event.target.value = "";
  }

  function onDrop(event: DragEvent<HTMLLabelElement>) {
    event.preventDefault();
    setDragging(false);
    if (event.dataTransfer.files.length) void addFiles(event.dataTransfer.files);
  }

  function queueUrl(event: FormEvent) {
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

  async function addUrl(event: FormEvent) {
    event.preventDefault();
    const value = normalizeSourceUrl(url);
    if (!value) {
      setNotice("Bitte eine gueltige oeffentliche HTTP- oder HTTPS-URL eingeben.");
      return;
    }
    setChecking(true);
    try {
      const identity = await sourceIdentityHash("canonical_url", value);
      const localKey = `canonical_url:${identity}`;
      const result = locallyQueuedIdentities.current.has(localKey)
        ? ({ status: "duplicate", sourceId: "local", title: value } as const)
        : await preflight({ kind: "url", url: value });
      if (result.status !== "new") {
        setNotice("Diese Webquelle ist bereits vorhanden oder vorgemerkt und wurde nicht erneut aufgenommen.");
        return;
      }
      locallyQueuedIdentities.current.add(localKey);
      queueUrl(event);
      setNotice("Neue Webquelle wurde nach der Duplikatpruefung vorgemerkt.");
    } catch {
      setNotice("Die Quellenpruefung ist fehlgeschlagen; die Webquelle wurde nicht vorgemerkt.");
    } finally {
      setChecking(false);
    }
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
            <strong>{learningProposalCount}</strong>
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
                disabled={checking}
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
                disabled={checking}
                onChange={(event) => setUrl(event.target.value)}
                placeholder="https://…"
                type="url"
                value={url}
              />
              <button disabled={checking} type="submit">
                {checking ? "Pruefe..." : "Link vormerken"}
              </button>
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
              {learningProposals.length ? (
                learningProposals.map((proposal) => (
                  <article className="proposal-card" key={proposal.id}>
                    <div>
                      <span className="proposal-state">{proposal.typeLabel}</span>
                      <h3>{proposal.title}</h3>
                      <p>{proposal.recommendation}</p>
                      <p>
                        {formatObservationCount(proposal.frequency)} · erfasst am{" "}
                        {proposal.createdAtLabel}
                      </p>
                    </div>
                    <strong className="decision-label">{proposal.statusLabel}</strong>
                  </article>
                ))
              ) : (
                <article className="proposal-card">
                  <div>
                    <span className="proposal-state">Aktuell leer</span>
                    <h3>Keine offenen Lernvorschläge</h3>
                    <p>Neue, bereinigte Hinweise erscheinen hier nach der Erfassung.</p>
                  </div>
                </article>
              )}
            </div>
            <p className="demo-label">
              Nur-Lese-Ansicht: Freigaben erfolgen erst im geprüften Wiki-Workflow.
            </p>
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

function formatObservationCount(frequency: number) {
  return frequency === 1 ? "1 Beobachtung" : `${frequency} Beobachtungen`;
}
