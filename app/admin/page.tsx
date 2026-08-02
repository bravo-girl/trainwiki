import type { Metadata } from "next";
import { getAdminSession } from "../admin-auth";
import { AdminLogin } from "../components/AdminLogin";
import { AdminWorkspace } from "../components/AdminWorkspace";
import { BrandHeader } from "../components/BrandHeader";

export const dynamic = "force-dynamic";

export const metadata: Metadata = {
  title: "Admin",
  description: "Quellen, Lernvorschläge und Wiki-Gesundheit kontrolliert verwalten.",
};

export default async function AdminPage() {
  const admin = await getAdminSession();

  return (
    <div className="site-frame">
      <BrandHeader active="admin" />
      {admin ? <AdminWorkspace adminName={admin.sub} /> : <AdminLogin />}
    </div>
  );
}
