open Test
open BinarySearch

let assertEquals = (~message=?, a: option<int>, b: option<int>) => {
  assertion(~message?, ~operator="Option equals", (a, b) => a == b, a, b)
}

test("finds a value in an array with one element", () => {
  assertEquals(find([6], 6), Some(0))
})

test("finds a value in the middle of an array", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 6), Some(3))
})

test("finds a value at the beginning of an array", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 1), Some(0))
})

test("finds a value at the end of an array", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 11), Some(6))
})

test("finds a value in an array of odd length", () => {
  let input = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634]
  assertEquals(find(input, 144), Some(9))
})

test("finds a value in an array of even length", () => {
  let input = [1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]
  assertEquals(find(input, 21), Some(5))
})

test("identifies that a value is not included in the array", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 7), None)
})

test("a value smaller than the array's smallest value is not included", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 0), None)
})

test("a value larger than the array's largest value is not included", () => {
  assertEquals(find([1, 3, 4, 6, 8, 9, 11], 13), None)
})

test("nothing is included in an empty array", () => {
  assertEquals(find([], 1), None)
})
