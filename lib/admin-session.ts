import { getRuntimeBinding } from "./runtime-env";

const encoder = new TextEncoder();

export const ADMIN_COOKIE_NAME = "__Host-trainwiki_admin";
export const ADMIN_SESSION_SECONDS = 8 * 60 * 60;

export type AdminSession = {
  sub: string;
  iat: number;
  exp: number;
};

export async function createAdminSessionToken(
  login: string,
  now = Date.now(),
): Promise<string> {
  const normalizedLogin = normalizeGitHubLogin(login);
  const secret = sessionSecret();
  if (!normalizedLogin || !secret) {
    throw new Error("Admin session configuration is incomplete.");
  }

  const issuedAt = Math.floor(now / 1000);
  const payload = bytesToBase64Url(
    encoder.encode(
      JSON.stringify({
        sub: normalizedLogin,
        iat: issuedAt,
        exp: issuedAt + ADMIN_SESSION_SECONDS,
      } satisfies AdminSession),
    ),
  );
  const signature = await sign(payload, secret);
  return `${payload}.${signature}`;
}

export async function verifyAdminSessionToken(
  token: string | null | undefined,
  now = Date.now(),
): Promise<AdminSession | null> {
  const secret = sessionSecret();
  if (!token || !secret || token.length > 2048) return null;

  const parts = token.split(".");
  if (parts.length !== 2) return null;
  const [payload, encodedSignature] = parts;

  try {
    const key = await importHmacKey(secret, ["verify"]);
    const valid = await crypto.subtle.verify(
      "HMAC",
      key,
      base64UrlToArrayBuffer(encodedSignature),
      encoder.encode(payload),
    );
    if (!valid) return null;

    const parsed = JSON.parse(
      new TextDecoder().decode(base64UrlToBytes(payload)),
    ) as Partial<AdminSession>;
    const nowSeconds = Math.floor(now / 1000);
    const login = normalizeGitHubLogin(parsed.sub);
    if (
      !login ||
      typeof parsed.iat !== "number" ||
      typeof parsed.exp !== "number" ||
      parsed.iat > nowSeconds + 60 ||
      parsed.exp <= nowSeconds ||
      parsed.exp - parsed.iat > ADMIN_SESSION_SECONDS
    ) {
      return null;
    }

    return { sub: login, iat: parsed.iat, exp: parsed.exp };
  } catch {
    return null;
  }
}

export function adminSessionCookie(token: string): string {
  return [
    `${ADMIN_COOKIE_NAME}=${token}`,
    "Path=/",
    "HttpOnly",
    "Secure",
    "SameSite=Strict",
    `Max-Age=${ADMIN_SESSION_SECONDS}`,
  ].join("; ");
}

export function clearAdminSessionCookie(): string {
  return [
    `${ADMIN_COOKIE_NAME}=`,
    "Path=/",
    "HttpOnly",
    "Secure",
    "SameSite=Strict",
    "Max-Age=0",
  ].join("; ");
}

export function normalizeGitHubLogin(value: unknown): string | null {
  if (typeof value !== "string") return null;
  const login = value.trim().toLowerCase();
  return /^[a-z\d](?:[a-z\d-]{0,37}[a-z\d])?$/.test(login) ? login : null;
}

function sessionSecret(): string | null {
  const value = getRuntimeBinding<string>(
    "TRAINWIKI_ADMIN_SESSION_SECRET",
  )?.trim();
  return value && value.length >= 32 ? value : null;
}

async function sign(payload: string, secret: string): Promise<string> {
  const key = await importHmacKey(secret, ["sign"]);
  const signature = await crypto.subtle.sign(
    "HMAC",
    key,
    encoder.encode(payload),
  );
  return bytesToBase64Url(new Uint8Array(signature));
}

function importHmacKey(
  secret: string,
  usages: Array<"sign" | "verify">,
): Promise<CryptoKey> {
  return crypto.subtle.importKey(
    "raw",
    encoder.encode(secret),
    { name: "HMAC", hash: "SHA-256" },
    false,
    usages,
  );
}

function bytesToBase64Url(bytes: Uint8Array): string {
  let binary = "";
  for (const byte of bytes) binary += String.fromCharCode(byte);
  return btoa(binary).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/g, "");
}

function base64UrlToBytes(value: string): Uint8Array {
  const normalized = value.replace(/-/g, "+").replace(/_/g, "/");
  const padded = normalized.padEnd(Math.ceil(normalized.length / 4) * 4, "=");
  const binary = atob(padded);
  return Uint8Array.from(binary, (character) => character.charCodeAt(0));
}

function base64UrlToArrayBuffer(value: string): ArrayBuffer {
  const bytes = base64UrlToBytes(value);
  return bytes.buffer.slice(
    bytes.byteOffset,
    bytes.byteOffset + bytes.byteLength,
  ) as ArrayBuffer;
}
