import Foundation;

// Enter your code here

let year = Int(readLine()!)!

func dayOfProgrammer(in year: Int) -> String {
    
    var dayTotal = 0
    
    for i in 1...8 {
        let dateComponents = DateComponents(year: year, month: i)
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponents)!
        
        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count
        
        dayTotal += numDays
    }
    
    let dop = 256 - dayTotal
    
    switch year {
        
    case 1700, 1800, 1900:
        return "\(dop - 1).09.\(year)"
        
    case 1918:
        return "26.09.1918"
        
    default:
        return "\(dop).09.\(year)"
    }
}


print(dayOfProgrammer(in: year))