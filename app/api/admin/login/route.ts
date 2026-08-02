import {
  adminAuthConfigured,
  verifyGitHubAdminPat,
} from "@/app/admin-auth";
import {
  adminSessionCookie,
  createAdminSessionToken,
} from "@/lib/admin-session";
import {
  anonymousRateLimitSubject,
  consumeD1RateLimit,
  type D1RateLimitDatabase,
} from "@/lib/rate-limit";
import { getRuntimeBinding } from "@/lib/runtime-env";

const MAX_BODY_BYTES = 2_048;

class LoginError extends Error {
  constructor(
    readonly status: number,
    readonly retryAfterSeconds?: number,
  ) {
    super("Anmeldung nicht möglich.");
  }
}

export async function POST(request: Request): Promise<Response> {
  try {
    enforceSameOrigin(request);
    if (!adminAuthConfigured()) throw new LoginError(503);
    await enforceLoginRateLimit(request);

    if (
      !request.headers
        .get("content-type")
        ?.toLowerCase()
        .startsWith("application/json")
    ) {
      throw new LoginError(415);
    }

    let token = "";
    try {
      const body = (await readLimitedJson(request)) as { token?: unknown };
      token = typeof body.token === "string" ? body.token : "";
    } catch (error) {
      if (error instanceof LoginError) throw error;
      throw new LoginError(400);
    }

    const login = await verifyGitHubAdminPat(token);
    token = "";
    if (!login) throw new LoginError(401);

    const sessionToken = await createAdminSessionToken(login);
    return json(
      { ok: true, login },
      200,
      { "Set-Cookie": adminSessionCookie(sessionToken) },
    );
  } catch (error) {
    if (error instanceof LoginError) {
      const headers = error.retryAfterSeconds
        ? { "Retry-After": String(error.retryAfterSeconds) }
        : undefined;
      return json({ error: error.message }, error.status, headers);
    }
    console.error("Unexpected admin login error.");
    return json({ error: "Anmeldung nicht möglich." }, 500);
  }
}

function enforceSameOrigin(request: Request): void {
  if (request.headers.get("sec-fetch-site") === "cross-site") {
    throw new LoginError(403);
  }
  const origin = request.headers.get("origin");
  if (origin && new URL(origin).origin !== new URL(request.url).origin) {
    throw new LoginError(403);
  }
}

async function enforceLoginRateLimit(request: Request): Promise<void> {
  const db = getRuntimeBinding<D1RateLimitDatabase>("DB");
  if (!db) throw new LoginError(503);

  const result = await consumeD1RateLimit(db, {
    scope: "admin_login",
    subjectKey: await anonymousRateLimitSubject(request),
    rules: [{ metric: "attempts_10_minutes", limit: 5, windowMs: 600_000 }],
  });
  if (!result.allowed) {
    throw new LoginError(429, result.retryAfterSeconds);
  }
}

async function readLimitedJson(request: Request): Promise<unknown> {
  const declaredLength = Number(request.headers.get("content-length") ?? 0);
  if (Number.isFinite(declaredLength) && declaredLength > MAX_BODY_BYTES) {
    throw new LoginError(413);
  }
  if (!request.body) throw new LoginError(400);

  const reader = request.body.getReader();
  const chunks: Uint8Array[] = [];
  let received = 0;
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    received += value.byteLength;
    if (received > MAX_BODY_BYTES) {
      await reader.cancel();
      throw new LoginError(413);
    }
    chunks.push(value);
  }

  const bytes = new Uint8Array(received);
  let offset = 0;
  for (const chunk of chunks) {
    bytes.set(chunk, offset);
    offset += chunk.byteLength;
  }
  return JSON.parse(new TextDecoder().decode(bytes)) as unknown;
}

function json(
  value: unknown,
  status: number,
  headers: Record<string, string> = {},
): Response {
  return Response.json(value, {
    status,
    headers: {
      "Cache-Control": "no-store",
      "X-Content-Type-Options": "nosniff",
      ...headers,
    },
  });
}
