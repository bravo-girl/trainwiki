import { cookies } from "next/headers";
import {
  ADMIN_COOKIE_NAME,
  type AdminSession,
  normalizeGitHubLogin,
  verifyAdminSessionToken,
} from "@/lib/admin-session";
import { getRuntimeBinding } from "@/lib/runtime-env";

export async function getAdminSession(): Promise<AdminSession | null> {
  const cookieStore = await cookies();
  const session = await verifyAdminSessionToken(
    cookieStore.get(ADMIN_COOKIE_NAME)?.value,
  );
  const expectedLogin = normalizeGitHubLogin(
    getRuntimeBinding<string>("TRAINWIKI_ADMIN_GITHUB_LOGIN"),
  );
  return session && expectedLogin === session.sub ? session : null;
}

export function adminAuthConfigured(): boolean {
  const login = getRuntimeBinding<string>("TRAINWIKI_ADMIN_GITHUB_LOGIN");
  const secret = getRuntimeBinding<string>(
    "TRAINWIKI_ADMIN_SESSION_SECRET",
  )?.trim();
  return Boolean(
    normalizeGitHubLogin(login) && secret && secret.length >= 32,
  );
}

export async function verifyGitHubAdminPat(token: string): Promise<string | null> {
  const expectedLogin = normalizeGitHubLogin(
    getRuntimeBinding<string>("TRAINWIKI_ADMIN_GITHUB_LOGIN"),
  );
  const candidate = token.trim();
  if (!expectedLogin || candidate.length < 20 || candidate.length > 512) {
    return null;
  }

  let response: Response;
  try {
    response = await fetch("https://api.github.com/user", {
      headers: {
        Accept: "application/vnd.github+json",
        Authorization: `Bearer ${candidate}`,
        "User-Agent": "TrainWiki",
        "X-GitHub-Api-Version": "2022-11-28",
      },
      signal: AbortSignal.timeout(8_000),
    });
  } catch {
    return null;
  }
  if (!response.ok) return null;

  try {
    const payload = (await response.json()) as { login?: unknown };
    const actualLogin = normalizeGitHubLogin(payload.login);
    return actualLogin === expectedLogin ? actualLogin : null;
  } catch {
    return null;
  }
}
