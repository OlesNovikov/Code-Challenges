# Code Challenges
This is training project taken from LinkedIn course [Swift Code Challenges](https://www.linkedin.com/learning/swift-code-challenges).

Challenges

1. Print the first n odd numbers (★☆☆☆)

```swift
stride(from: 1, to: n + 1, by: 2).forEach { print($0) }
```

2. Swap values (★☆☆☆)

```swift
func swap<T: Equatable>(_ x: inout T, _ y: inout T) {
    guard x != y else { return }
    (x, y) = (y, x)
}
```

3. Filter prime numbers (★☆☆☆)

4. Count days between two dates (★★☆☆)

First situation: 1 day = 24 hours; Second: 1 day = 1 midnight

5. Calculate sum(n)

1. Rock, paper, scissors
2. Convert dictionary to JSON
3. Count vowels and consonants
4. Find the missing number
5. Generate random passwords
6. Check palindromes
7. Storing strings securely

