func smallestMissingNumber(_ numbers: [Int]) -> Int {
    var smallestMissing = 1
    guard !numbers.isEmpty else {
        return smallestMissing
    }

    let sortedNumbers = numbers.filter{ $0 > 0 }.sorted()
    var last = 0
    if let greatest = sortedNumbers.last,
       greatest <= 0 {
        return smallestMissing
    }
    
    for number in numbers {
        if last == number {
            continue
        } else if smallestMissing < number {
            return smallestMissing
        }
        
        smallestMissing += 1
        last = number
    }
    
    return smallestMissing
}


let numbers = [-2, 4, 1, 2, 2]
print(smallestMissingNumber(numbers))
