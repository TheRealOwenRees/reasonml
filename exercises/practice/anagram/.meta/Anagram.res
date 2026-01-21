let toChars = (word: string): array<float> => {
  let chars =
    word
    ->String.split("")
    ->Array.map(x => String.charCodeAt(x, 0))
  Array.sort(chars, Float.compare)
  chars
}

let isAnagram = (base: string, word: string): bool => {
  String.length(base) == String.length(word) && {
      let lowerBase = String.toLowerCase(base)
      let lowerWord = String.toLowerCase(word)
      lowerBase != lowerWord && toChars(lowerBase) == toChars(lowerWord)
    }
}

let anagrams = (base: string, candidates: array<string>): array<string> =>
  candidates->Array.filter(word => isAnagram(base, word))
