const COMMON_MOJIBAKE_REPLACEMENTS: ReadonlyArray<readonly [string, string]> = [
  ["Ã„", "Ä"],
  ["Ã–", "Ö"],
  ["Ãœ", "Ü"],
  ["Ã¤", "ä"],
  ["Ã¶", "ö"],
  ["Ã¼", "ü"],
  ["ÃŸ", "ß"],
  ["â€“", "–"],
  ["â€”", "—"],
  ["â€¦", "…"],
  ["â€ž", "„"],
  ["â€œ", "“"],
  ["â€™", "’"],
  ["Â", ""],
];

export function repairCommonMojibake(value: string) {
  return COMMON_MOJIBAKE_REPLACEMENTS.reduce(
    (result, [broken, repaired]) => result.replaceAll(broken, repaired),
    value,
  );
}
