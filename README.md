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

```
```



1. Count days between two dates
2. Calculate sum(n)
3. Rock, paper, scissors
4. Convert dictionary to JSON
5. Count vowels and consonants
6. Find the missing number
7. Generate random passwords
8. Check palindromes
9. Storing strings securely

