let to_digits = (number: int): array<int> => {
  Int.toString(number)
  ->String.split("")
  ->Array.map(s => Int.fromString(s, ~radix=10))
  ->Array.map(o => Option.getOrThrow(o))
}

let validate = (number: int): bool => {
  let digits = to_digits(number)
  let len = Array.length(digits)
  let total = Array.reduce(digits, 0.0, (acc, x) =>
    acc +. Math.pow(Float.fromInt(x), ~exp=Float.fromInt(len))
  )
  total == Float.fromInt(number)
}
