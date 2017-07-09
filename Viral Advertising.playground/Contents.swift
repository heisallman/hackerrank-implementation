//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let n = 3


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



calcViral(5, total: 0, days: 1)
calcViral(5, total: 0, days: 2)
calcViral(5, total: 0, days: 3)
calcViral(5, total: 0, days: 4)
calcViral(5, total: 0, days: 5)