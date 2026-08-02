import type { Metadata } from "next";
import { requireTrainWikiAdmin } from "../chatgpt-auth";
import { AdminWorkspace } from "../components/AdminWorkspace";
import { BrandHeader } from "../components/BrandHeader";

export const metadata: Metadata = {
  title: "Admin",
  description: "Quellen, Lernvorschläge und Wiki-Gesundheit kontrolliert verwalten.",
};

export default async function AdminPage() {
  const admin = await requireTrainWikiAdmin("/admin");

  return (
    <div className="site-frame">
      <BrandHeader active="admin" />
      <AdminWorkspace adminName={admin.displayName} />
    </div>
  );
}
