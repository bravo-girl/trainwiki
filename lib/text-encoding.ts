const COMMON_MOJIBAKE_REPLACEMENTS: ReadonlyArray<readonly [string, string]> = [
  ["\u00e2\u20ac\u00a2", "•"], ["\u00e2\u20ac\u02dc", "‘"], ["\u00e2\u20ac\u00ba", "›"],
  ["\u00e2\u20ac\u00b9", "‹"], ["\u00e2\u20ac\u2122", "’"], ["\u00c2\u00a0", " "],
  ["Ãƒ1⁄4", "Ã¼"], ["Ã1⁄4", "ü"],
  ["Ãƒâ€ž", "Ã„"], ["Ãƒâ€“", "Ã–"], ["ÃƒÅ“", "Ãœ"],
  ["ÃƒÂ¤", "Ã¤"], ["ÃƒÂ¶", "Ã¶"], ["ÃƒÂ¼", "Ã¼"], ["ÃƒÅ¸", "ÃŸ"],
  ["Ã¢â‚¬â€œ", "â€“"], ["Ã¢â‚¬â€", "â€”"], ["Ã¢â‚¬Â¦", "â€¦"],
  ["Ã¢â‚¬Å¾", "â€ž"], ["Ã¢â‚¬Å“", "â€œ"], ["Ã¢â‚¬â„¢", "â€™"],
  ["Ã„", "Ä"], ["Ã–", "Ö"], ["Ãœ", "Ü"],
  ["Ã¤", "ä"], ["Ã¶", "ö"], ["Ã¼", "ü"], ["ÃŸ", "ß"],
  ["â€“", "–"], ["â€”", "—"], ["â€¦", "…"],
  ["â€ž", "„"], ["â€œ", "“"], ["â€™", "’"],
  ["Â", ""],
];

export function repairCommonMojibake(value: string) {
  let repaired = value;

  // Metadata can cross the UTF-8/Windows-1252 boundary repeatedly and may be
  // mixed with already valid text. Repair only known sequences, one layer per
  // pass, so correct characters elsewhere in the title remain untouched.
  for (let pass = 0; pass < 4; pass += 1) {
    const previous = repaired;
    repaired = COMMON_MOJIBAKE_REPLACEMENTS.reduce(
      (result, [broken, correct]) => result.replaceAll(broken, correct),
      repaired,
    );
    if (repaired === previous) break;
  }

  return repaired;
}
