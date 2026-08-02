export type D1StatementLike = {
  bind(...values: unknown[]): D1StatementLike;
};

export type D1BatchResultLike = {
  results?: Array<Record<string, unknown>>;
};

export type D1RateLimitDatabase = {
  prepare(query: string): D1StatementLike;
  batch(statements: D1StatementLike[]): Promise<D1BatchResultLike[]>;
};

export type RateLimitRule = {
  metric: string;
  limit: number;
  windowMs: number;
};

export type RateLimitResult = {
  allowed: boolean;
  exceededMetric?: string;
  retryAfterSeconds: number;
};

type WindowCounter = RateLimitRule & {
  windowStart: string;
  windowEnd: string;
  windowEndMs: number;
};

const UPSERT_COUNTER_SQL = `
  INSERT INTO quota_counters (
    id, scope, subject_key, metric, window_start, window_end, value, updated_at
  ) VALUES (?, ?, ?, ?, ?, ?, 1, CURRENT_TIMESTAMP)
  ON CONFLICT(scope, subject_key, metric, window_start, window_end)
  DO UPDATE SET value = quota_counters.value + 1, updated_at = CURRENT_TIMESTAMP
  RETURNING value
`;

function createWindow(rule: RateLimitRule, now: number): WindowCounter {
  const windowStartMs = Math.floor(now / rule.windowMs) * rule.windowMs;
  const windowEndMs = windowStartMs + rule.windowMs;
  return {
    ...rule,
    windowStart: new Date(windowStartMs).toISOString(),
    windowEnd: new Date(windowEndMs).toISOString(),
    windowEndMs,
  };
}

function counterValue(result: D1BatchResultLike | undefined) {
  const value = result?.results?.[0]?.value;
  return typeof value === "number" ? value : Number(value);
}

export async function anonymousRateLimitSubject(request: Request) {
  const address =
    request.headers.get("cf-connecting-ip") ??
    request.headers.get("x-forwarded-for")?.split(",")[0]?.trim() ??
    "unknown";
  const bytes = new TextEncoder().encode(address);
  const digest = await crypto.subtle.digest("SHA-256", bytes);
  return Array.from(new Uint8Array(digest), (byte) => byte.toString(16).padStart(2, "0")).join("");
}

/**
 * Atomically consumes all configured counters in a single D1 batch.
 * Rejected attempts remain counted, preventing repeated probing at a boundary.
 */
export async function consumeD1RateLimit(
  db: D1RateLimitDatabase,
  options: {
    scope: string;
    subjectKey: string;
    rules: RateLimitRule[];
    now?: number;
  },
): Promise<RateLimitResult> {
  if (!options.scope || !options.subjectKey || options.rules.length === 0) {
    throw new Error("Invalid D1 rate-limit configuration.");
  }

  const now = options.now ?? Date.now();
  const windows = options.rules.map((rule) => {
    if (!rule.metric || !Number.isInteger(rule.limit) || rule.limit < 1 || rule.windowMs < 1) {
      throw new Error("Invalid D1 rate-limit rule.");
    }
    return createWindow(rule, now);
  });

  const statements = windows.map((window) =>
    db.prepare(UPSERT_COUNTER_SQL).bind(
      crypto.randomUUID(),
      options.scope,
      options.subjectKey,
      window.metric,
      window.windowStart,
      window.windowEnd,
    ),
  );
  const results = await db.batch(statements);

  for (let index = 0; index < windows.length; index += 1) {
    const value = counterValue(results[index]);
    if (!Number.isFinite(value)) {
      throw new Error("D1 did not return a rate-limit counter.");
    }
    if (value > windows[index].limit) {
      return {
        allowed: false,
        exceededMetric: windows[index].metric,
        retryAfterSeconds: Math.max(1, Math.ceil((windows[index].windowEndMs - now) / 1_000)),
      };
    }
  }

  return {
    allowed: true,
    retryAfterSeconds: 0,
  };
}
