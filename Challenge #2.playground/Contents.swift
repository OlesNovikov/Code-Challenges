// Challenge 2
// Swap 2 values

var x = 1
var y = 1000

print("x: \(x), y: \(y)")

func swap<T: Equatable>(_ x: inout T, _ y: inout T) {
    guard x != y else { return }
    (x, y) = (y, x)
}

swap(&x, &y)

print("x: \(x), y: \(y)")
