open Test
open Accumulate

let square = x => x * x

let reverse = x => {
  let chars = x->String.split("")
  Array.reverse(chars)
  chars->Array.join("")
}

let arrayEqual = (~message=?, a: array<'a>, b: array<'a>) =>
  assertion(~message?, ~operator="Array equals", (a, b) => a == b, a, b)

test("[] Accumulate", () => arrayEqual(~message="Returns empty array", accumulate(square, []), []))

test("square Accumulate", () =>
  arrayEqual(~message="Squares all elements", accumulate(square, [1, 2, 3]), [1, 4, 9])
)

test("toUpper Accumulate", () =>
  arrayEqual(
    ~message="Converts all elements to uppercase",
    accumulate(String.toUpperCase, ["hello", "world"]),
    ["HELLO", "WORLD"],
  )
)

test("reverse Accumulate", () =>
  arrayEqual(
    ~message="Reverses all elements",
    accumulate(reverse, ["hello", "world"]),
    ["olleh", "dlrow"],
  )
)
