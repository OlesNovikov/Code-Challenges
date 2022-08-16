import Foundation

let colorsDictionary = [
    "red": "FF0000",
    "green": "00FF00",
    "blue": "0000FF"
]

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

if let jsonData = try? encoder.encode(colorsDictionary) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

if let jsonData = try? JSONSerialization.data(withJSONObject: colorsDictionary , options: [.prettyPrinted]) {
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}

extension Dictionary {
    func toJSONString() -> String? {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted]) else {
            return nil
        }
        return String(data: jsonData, encoding: .utf8)
    }
}

if let jsonString = colorsDictionary.toJSONString() {
    print(jsonString)
}
