# Code Challenges
This is training project taken from LinkedIn course [Swift Code Challenges](https://www.linkedin.com/learning/swift-code-challenges).

Challenges

1. **Print the first n odd numbers** (★☆☆☆)

```swift
stride(from: 1, to: n + 1, by: 2).forEach { print($0) }
```

2. **Swap values** (★☆☆☆)

```swift
func swap<T: Equatable>(_ x: inout T, _ y: inout T) {
    guard x != y else { return }
    (x, y) = (y, x)
}
```

3. **Filter prime numbers** (★☆☆☆)

4. **Count days between two dates** (★★☆☆)

First situation: 1 day = 24 hours; Second: 1 day = 1 midnight

5. **Calculate sum(n)** (★★☆☆)

The most efficient way to use Carl Friedrich Gauss in 1777:

```swift
func sum(n: UInt) -> UInt {
    n * (n + 1) / 2
}
```

6. **Rock, paper, scissors** (★★★☆)

7. **Convert dictionary to JSON** (★★☆☆)

Ways of solving:

- JSONEncoder
- JSONSerialization

 ```swift
 extension Dictionary {
     func toJSONString() -> String? {
         guard let jsonData = try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted]) else {
             return nil
         }
         return String(data: jsonData, encoding: .utf8)
     }
 }
 ```

8. **Count vowels and consonants** (★★☆☆)

9. **Find the missing number** (★★★☆)

Return the smallest positive number. [-19, -1, 1, 5, 121], output: 2

10. **Generate random passwords** (★★★☆)

```swift
func generatePassword(_ length: Int) -> String {
    var passwordCharSet = "abcdefghijklmnopqrstuvwxyz"
    passwordCharSet += passwordCharSet.uppercased()
    passwordCharSet += "!@#$%^&*()-_=+\""
    passwordCharSet += "1234567890"
    
    return String((0..<length).compactMap{ _ in passwordCharSet.randomElement() })
}
```

11. **Check palindromes** (★★★☆)

Ways of solving:

- Reverse and compare with source string
- Make 2 pointers - left and right. Left pointer starts to iterate from left, Right pointer starts to iterate from right. Compare until characters same.

12. **Storing strings securely** (★★★★)

Store using `Security` framework
