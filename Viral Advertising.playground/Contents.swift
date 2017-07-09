import Foundation;

// Enter your code here

func calcViral(_ startNum:Int, total totalNum: Int, days day: Int) -> Int {
    
    var remainingDays = day
    var cumulativePeople = totalNum
    
    let viralPeople = Int(floor(Double(startNum/2)))
    cumulativePeople += viralPeople
    remainingDays -= 1
    
    if remainingDays == 0 {
        return cumulativePeople
    }
    
    return calcViral((viralPeople * 3), total: cumulativePeople, days: remainingDays)
}

let n = Int(readLine()!)!
print(calcViral(5, total: 0, days: n))

