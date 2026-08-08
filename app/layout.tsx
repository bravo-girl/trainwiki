import type { Metadata } from "next";
import { headers } from "next/headers";
import "./globals.css";

export async function generateMetadata(): Promise<Metadata> {
  const requestHeaders = await headers();
  const host = requestHeaders.get("x-forwarded-host") ?? requestHeaders.get("host");
  const protocol = requestHeaders.get("x-forwarded-proto") ?? "https";
  const base = new URL(host ? `${protocol}://${host}` : "http://localhost:3000");
  const description = "Quellengebundene Wissensbasis.";

  return {
    metadataBase: base,
    title: "TrainWiki",
    description,
    openGraph: {
      title: "TrainWiki",
      description,
      images: [{ url: new URL("/og.png", base).toString(), width: 1536, height: 1024 }],
      type: "website",
      locale: "de_DE",
    },
    twitter: {
      card: "summary_large_image",
      title: "TrainWiki",
      description,
      images: [new URL("/og.png", base).toString()],
    },
  };
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="de">
      <body>{children}</body>
    </html>
  );
}
