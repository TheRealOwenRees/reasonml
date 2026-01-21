let abbreviate = (input: string): string => {
  let firstLetter = (word: string): string => word->String.charAt(0)->String.toUpperCase

  input
  ->String.splitByRegExp(/[\\s-]/)
  ->Array.map(o => Option.getExn(o))
  ->Array.map(firstLetter)
  ->Array.join("")
}
