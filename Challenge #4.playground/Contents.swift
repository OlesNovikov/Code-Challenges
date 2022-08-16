//
//

import Foundation

enum TimeUnit {
    case fullday
    case midnight
}

func daysBetween(from: Date, to: Date, unit: TimeUnit) -> Int? {
    let result: Int?
    let calendar: Calendar = Calendar.current
    
    switch unit {
    case .fullday:
        result = calendar.dateComponents([.day], from: from, to: to).day
    case .midnight:
        let startOfFromDay = calendar.startOfDay(for: from)
        let startOfToDay = calendar.startOfDay(for: to)
        result = calendar.dateComponents([.day], from: startOfFromDay, to: startOfToDay).day
    }
    
    return result
}

if let startDate = Calendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: Date()),
   let toDate = Calendar.current.date(byAdding: DateComponents(second: 5), to: startDate) {
    if let days = daysBetween(from: startDate, to: toDate, unit: .fullday) {
        print(days)
    }
    
    if let midnights = daysBetween(from: startDate, to: toDate, unit: .midnight) {
        print(midnights)
    }
}
