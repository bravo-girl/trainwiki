export interface CitationValidationResult {
  valid: boolean;
  citedNumbers: number[];
}

const CITATION_PATTERN = /\[(\d{1,4})\]/g;

/**
 * Require at least one numbered citation and reject every number that was not
 * supplied by retrieval. Returned numbers preserve first-use order.
 */
export function validateAnswerCitations(
  answer: string,
  availableNumbers: readonly number[],
): CitationValidationResult {
  const allowed = new Set(
    availableNumbers.filter(
      (number) => Number.isInteger(number) && number > 0,
    ),
  );
  const citedNumbers: number[] = [];
  const seen = new Set<number>();
  let hasInvalidCitation = false;

  for (const match of answer.matchAll(CITATION_PATTERN)) {
    const number = Number(match[1]);
    if (!allowed.has(number)) {
      hasInvalidCitation = true;
      continue;
    }
    if (!seen.has(number)) {
      seen.add(number);
      citedNumbers.push(number);
    }
  }

  return {
    valid: citedNumbers.length > 0 && !hasInvalidCitation,
    citedNumbers: hasInvalidCitation ? [] : citedNumbers,
  };
}
