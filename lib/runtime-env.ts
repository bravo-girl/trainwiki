import { AsyncLocalStorage } from "node:async_hooks";

type RuntimeBindings = Record<string, unknown>;

const RUNTIME_BINDINGS_KEY = Symbol.for("trainwiki.runtime-bindings");
const runtimeGlobal = globalThis as typeof globalThis & {
  [RUNTIME_BINDINGS_KEY]?: AsyncLocalStorage<RuntimeBindings>;
};
const runtimeBindings =
  runtimeGlobal[RUNTIME_BINDINGS_KEY] ??=
    new AsyncLocalStorage<RuntimeBindings>();

/** Keeps Cloudflare bindings request-local and also leaves Node tests portable. */
export function runWithRuntimeBindings<T>(
  bindings: RuntimeBindings,
  callback: () => T,
): T {
  return runtimeBindings.run(bindings, callback);
}

export function getRuntimeBinding<T>(name: string): T | undefined {
  const binding = runtimeBindings.getStore()?.[name];
  if (binding !== undefined) return binding as T;

  const localValue = process.env[name];
  return localValue === undefined ? undefined : (localValue as T);
}
