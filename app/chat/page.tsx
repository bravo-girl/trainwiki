import type { Metadata } from "next";
import { ChatWorkspace } from "../components/ChatWorkspace";

export const metadata: Metadata = {
  title: "TrainWiki",
  description: "Quellengebundener Dialog mit der wachsenden Wissensbasis.",
};

export default function ChatPage() {
  return (
    <div className="site-frame">
      <ChatWorkspace />
    </div>
  );
}
