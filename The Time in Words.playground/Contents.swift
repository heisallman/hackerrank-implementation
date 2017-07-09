import Foundation;

// Enter your code here

let h = Int(readLine()!)!
let m = Int(readLine()!)!

enum hours: Int {
    case one = 1, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve
}

enum minutesUnder20: Int {
    case one = 1, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
}

enum minutesOver20: Int {
    case twenty = 2, thirty, forty, fifty
}


func calculateHour(_ hour: Int) -> String {
    return "\(hours.init(rawValue: hour)!)"
}


func calculateMinutes(_ minutes: Int) -> String {
    
    switch minutes {
        
    case let min where min < 20:
        let result = minutesUnder20.init(rawValue: minutes)!
        return "\(result)"
        
    default:
        var digits : [Int] = []
        var number = minutes
        while number > 0 {
            digits.insert(number % 10, at: 0)
            number /= 10
        }
        
        switch minutes {
        case 20, 30, 40, 50:
            return "\(minutesOver20.init(rawValue:digits[0])!)"
            
        default:
            return "\(minutesOver20.init(rawValue:digits[0])!) \(minutesUnder20.init(rawValue:digits[1])!)"
        }
    }
}


func timeInWords(_ h: Int, _ m: Int) -> String {
    
    switch m {
    case _ where m == 0:
        let hour = calculateHour(h)
        return "\(hour) o' clock"
        
    case _ where m == 15:
        let hour = calculateHour(h)
        return "quarter past \(hour)"
        
    case _ where m == 30:
        let hour = calculateHour(h)
        return "half past \(hour)"
        
    case _ where m == 45:
        let hour = calculateHour(h + 1)
        return "quarter to \(hour)"
        
    case let min where m < 30:
        let hour = calculateHour(h)
        let minutes = calculateMinutes(min)
        return min == 1 ? "\(minutes) minute past \(hour)" : "\(minutes) minutes past \(hour)"
        
    case let min where m > 30:
        let hour = calculateHour(h + 1)
        let minutes = calculateMinutes(60 - min)
        return min == 1 ? "\(minutes) minute to \(hour)" : "\(minutes) minutes to \(hour)"
        
    default:
        return ""
    }
}



print(timeInWords(h, m))