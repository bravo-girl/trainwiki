import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import { headers } from "next/headers";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export async function generateMetadata(): Promise<Metadata> {
  const requestHeaders = await headers();
  const host = requestHeaders.get("x-forwarded-host") ?? requestHeaders.get("host");
  const protocol = requestHeaders.get("x-forwarded-proto") ?? "https";
  const base = new URL(host ? `${protocol}://${host}` : "http://localhost:3000");
  const description =
    "Ein lernender, quellengebundener LLM-Wiki-Chat mit kontrollierter Wissenspflege.";

  return {
    metadataBase: base,
    title: {
      default: "TrainWiki",
      template: "%s · TrainWiki",
    },
    description,
    openGraph: {
      title: "TrainWiki · Wissen, das mitdenkt.",
      description,
      images: [{ url: new URL("/og.png", base).toString(), width: 1536, height: 1024 }],
      type: "website",
      locale: "de_DE",
    },
    twitter: {
      card: "summary_large_image",
      title: "TrainWiki · Wissen, das mitdenkt.",
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
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
