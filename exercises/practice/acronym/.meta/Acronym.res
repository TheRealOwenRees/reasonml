let abbreviate = (phrase: string): string => {
  phrase
  ->String.split(" ")
  ->Array.map(word => {
    // Handle hyphenated words
    let parts = String.split(word, "-")
    Array.map(parts, part => {
      switch String.trim(part) {
      | "" => ""
      | p => {
          let first = String.charAt(p, 0)
          String.toUpperCase(first)
        }
      }
    })->Array.join("")
  })
  ->Array.join("")
}
