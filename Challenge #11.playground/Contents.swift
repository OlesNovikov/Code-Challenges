import Foundation

// solution 1
func isPalindrome(_ text: String) -> Bool {
    let text = text.filter{ $0.isLetter }
    guard text.count > 1 else {
        return true
    }
    let reversed = text.reversed()
    return String(reversed).caseInsensitiveCompare(text) == .orderedSame
}

print(isPalindrome("Abba"))
print(isPalindrome("Swift"))
print(isPalindrome("Amore, Roma"))

// solution 2
func isPalindrome(text: String) -> Bool {
    let text = text.filter{ $0.isLetter }
    guard text.count > 1 else {
        return true
    }
    let chars = Array(text.lowercased())
    
    var leftIndex = 0
    var rightIndex = chars.count - 1
    while leftIndex < rightIndex {
        if chars[leftIndex] != chars[rightIndex] {
            return false
        }
        leftIndex += 1
        rightIndex -= 1
    }
    return true
}

print(isPalindrome(text: "Abba"))
print(isPalindrome(text: "Swift"))
print(isPalindrome(text: "Amore, Roma"))
