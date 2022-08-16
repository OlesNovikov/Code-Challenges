
func countVowelsAndConsonants(_ text: String) -> (vowels: Int, consonants: Int) {
    var vowels: Int = 0
    var consonants: Int = 0
    
    let letters = text.filter{ $0.isLetter }.lowercased()
    
    if letters.isEmpty {
        return (vowels, consonants)
    }
    
    letters.forEach { char in
        switch char {
        case "a", "e", "i", "o", "u":
            vowels += 1
        default:
            consonants += 1
        }
    }
    
    return (vowels, consonants)
}

print(countVowelsAndConsonants("Isn't Swift fun?"))
