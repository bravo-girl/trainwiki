import type { Metadata } from "next";
import { ChatWorkspace } from "../components/ChatWorkspace";

export const dynamic = "force-dynamic";

export const metadata: Metadata = {
  title: "TrainWiki",
  description: "Quellengebundener Dialog mit der wachsenden Wissensbasis.",
};

const SUGGESTION_POOL = [
  "Welche aktuellen Änderungen sind besonders wichtig?",
  "Was gilt für den Netzfahrplan 2027?",
  "Welche Fristen muss ich beachten?",
  "Was ändert sich bei ETCS?",
  "Welche Regeln gelten für Trassenanmeldungen?",
  "Was steht zu Rahmenverträgen in den Quellen?",
  "Welche Informationen gibt es zur Baukommunikation?",
  "Fasse die wichtigsten Neuerungen kurz zusammen.",
  "Welche Dokumente behandeln Stationsentgelte?",
];

function randomSuggestions() {
  const pool = [...SUGGESTION_POOL];
  for (let index = pool.length - 1; index > 0; index -= 1) {
    const random = crypto.getRandomValues(new Uint32Array(1))[0] % (index + 1);
    [pool[index], pool[random]] = [pool[random], pool[index]];
  }
  return pool.slice(0, 3);
}

export default function ChatPage() {
  return (
    <div className="site-frame">
      <ChatWorkspace initialSuggestions={randomSuggestions()} />
    </div>
  );
}
