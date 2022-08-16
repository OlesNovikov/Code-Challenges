// Challenge 3
// Filter Prime Numbers
// Input: array of positive integers
// Output: all numbers in array or empty

let array: [UInt] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 59]

// solution 1
func findPrimes(_ numbers: [UInt]) -> [UInt] {
    var primes = [UInt]()
    for number in numbers {
        if number <= 1 {
            continue
        }
        var isPrime = true
        for i in 2..<number {
            if number % i == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            primes.append(number)
        }
    }
    return primes
}

// solution 2
func findPrimes(in array: [UInt]) -> [UInt] {
    return array.filter { number in
        var counter = 0
        if number <= 1 {
            return false
        }
        for item in 2...number {
            if number % item == 0 {
                if counter >= 1 {
                    return false
                } else {
                    counter += 1
                }
            }
        }
        return true
    }
}

print(findPrimes(in: array))


