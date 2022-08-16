import Foundation

func generatePassword(_ length: Int) -> String {
    var passwordCharSet = "abcdefghijklmnopqrstuvwxyz"
    passwordCharSet += passwordCharSet.uppercased()
    passwordCharSet += "!@#$%^&*()-_=+\""
    passwordCharSet += "1234567890"
    
    return String((0..<length).compactMap{ _ in passwordCharSet.randomElement() })
}

print(generatePassword(1234))
