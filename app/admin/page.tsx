import type { Metadata } from "next";
import { AdminWorkspace } from "../components/AdminWorkspace";
import { BrandHeader } from "../components/BrandHeader";

export const metadata: Metadata = {
  title: "Admin",
  description: "Quellen, Lernvorschläge und Wiki-Gesundheit kontrolliert verwalten.",
};

export default function AdminPage() {
  return (
    <div className="site-frame">
      <BrandHeader active="admin" />
      <AdminWorkspace />
    </div>
  );
}
