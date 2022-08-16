// Challenge 1
// Print the first n odd numbers

let n = 10

// solution 1
func forLoop() {
    for number in 1...n {
        if number % 2 == 1 {
            print(number)
        }
    }
}

// solution 2
func filter() {
    print((1...n).filter{ $0 % 2 == 1 })
}

// solution 3
func xor() {
    print((1...n).filter{ $0 ^ 1 == $0 - 1 })
}

// solution 4
func stride() {
    let oddNumbers = stride(from: 1, to: n + 1, by: 2)
    oddNumbers.forEach { print($0)}
}

func compactStride() {
    stride(from: 1, to: n + 1, by: 2).forEach { print($0) }
}
