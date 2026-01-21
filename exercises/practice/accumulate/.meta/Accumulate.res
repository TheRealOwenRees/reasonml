let accumulate = (fn: 'a => 'b, input: array<'a>): array<'b> => {
  let result: array<'b> = []
  Array.forEach(input, x => {
    Array.push(result, fn(x))->ignore
  })
  result
}
