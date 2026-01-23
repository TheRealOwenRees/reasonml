let toChars = (word: string): array<string> => {
  let chars = word->String.split("")
  Array.sort(chars, String.compare)
  chars
}

let isAnagram = (base: string, word: string): bool => {
  let lowerBase = String.toLowerCase(base)
  let lowerWord = String.toLowerCase(word)

  // Basic checks + sorted comparison
  String.length(base) == String.length(word) &&
  lowerBase != lowerWord &&
  toChars(lowerBase) == toChars(lowerWord)
}

let anagrams = (base: string, candidates: array<string>): array<string> =>
  candidates->Array.filter(word => isAnagram(base, word))
