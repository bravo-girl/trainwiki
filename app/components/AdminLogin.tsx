"use client";

import { FormEvent, useState } from "react";

export function AdminLogin() {
  const [token, setToken] = useState("");
  const [status, setStatus] = useState<"idle" | "loading" | "error">("idle");
  const [message, setMessage] = useState("");

  async function submit(event: FormEvent) {
    event.preventDefault();
    if (!token.trim() || status === "loading") return;
    setStatus("loading");
    setMessage("");

    try {
      const response = await fetch("/api/admin/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ token }),
      });
      setToken("");
      if (response.ok) {
        window.location.reload();
        return;
      }
      setStatus("error");
      setMessage(
        response.status === 429
          ? "Zu viele Versuche. Bitte warte kurz und versuche es erneut."
          : "Anmeldung nicht möglich. Prüfe den Zugangsschlüssel und versuche es erneut.",
      );
    } catch {
      setStatus("error");
      setMessage("Der Adminzugang ist momentan nicht erreichbar.");
    }
  }

  return (
    <main className="admin-login-shell">
      <section className="admin-login-card" aria-labelledby="admin-login-title">
        <p className="eyebrow">Geschützter Wissensbetrieb</p>
        <h1 id="admin-login-title">Adminzugang</h1>
        <p>
          TrainWiki prüft einmalig, ob der eingegebene Zugangsschlüssel zum
          freigegebenen Administratorkonto gehört. Der Schlüssel wird nicht
          gespeichert; anschließend gilt eine zeitlich begrenzte Sitzung.
        </p>
        <form onSubmit={submit}>
          <label htmlFor="admin-access-token">Persönlicher Zugangsschlüssel</label>
          <input
            autoComplete="current-password"
            id="admin-access-token"
            onChange={(event) => setToken(event.target.value)}
            placeholder="Zugangsschlüssel"
            type="password"
            value={token}
          />
          <button disabled={status === "loading"} type="submit">
            {status === "loading" ? "Wird geprüft …" : "Sicher anmelden"}
          </button>
        </form>
        {message && <p className="admin-login-error" role="alert">{message}</p>}
        <small>
          Der Schlüssel wird ausschließlich für die einmalige
          Berechtigungsprüfung verwendet.
        </small>
      </section>
    </main>
  );
}
