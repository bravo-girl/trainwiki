import type { Metadata } from "next";
import { BrandHeader } from "../components/BrandHeader";
import { ChatWorkspace } from "../components/ChatWorkspace";

export const metadata: Metadata = {
  title: "Chat",
  description: "Quellengebundener Dialog mit der wachsenden TrainWiki-Wissensbasis.",
};

export default function ChatPage() {
  return (
    <div className="site-frame">
      <BrandHeader active="chat" />
      <ChatWorkspace />
    </div>
  );
}
