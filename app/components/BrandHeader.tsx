import Link from "next/link";

type BrandHeaderProps = {
  active: "chat" | "admin";
};

export function BrandHeader({ active }: BrandHeaderProps) {
  return (
    <header className="brand-header">
      <Link className="brand" href="/chat" aria-label="TrainWiki Chat öffnen">
        <span className="brand-mark" aria-hidden="true">
          TW
        </span>
        <span>
          <strong>TRAINWIKI</strong>
          <small>Wissen, das mitdenkt.</small>
        </span>
      </Link>

      <nav className="primary-nav" aria-label="Hauptnavigation">
        <Link className={active === "chat" ? "is-active" : ""} href="/chat">
          Chat
        </Link>
        <Link className={active === "admin" ? "is-active" : ""} href="/admin">
          Admin
        </Link>
      </nav>

      <div className="system-pill" title="Architekturprototyp">
        <span className="status-dot" aria-hidden="true" />
        Prototyp
      </div>
    </header>
  );
}
