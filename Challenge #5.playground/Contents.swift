// solution 1
func sum(of number: Int) -> Int {
    let array = Array(0...number)
    return array.reduce(0, +)
}

// solution 2 (the most efficient)
func sum(n: UInt) -> UInt {
    n * (n + 1) / 2
}
