//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let returnDate = [28,2,2015]
let dueDate = [15,4,2015]

func libraryFine(returned a:[Int], due b:[Int]) -> Int {
    
    let yearDiff = (a[2] - b[2])
    let monthDiff = (a[1] - b[1])
    let dayDiff = (a[0] - b[0])
    
    switch yearDiff {
    case _ where yearDiff >= 1:
        return 10000
    case _ where yearDiff != 0 && yearDiff < 1:
        return 0
    default:
        break
    }
    
    switch monthDiff {
    case _ where monthDiff > 1:
        return 500 * monthDiff
    case _ where monthDiff != 0 && monthDiff < 1:
        return 0
    default:
        break
    }
    
    switch dayDiff {
    case _ where dayDiff > 1:
        return 15 * dayDiff
    default:
        return 0
    }
}


libraryFine(returned: returnDate, due: dueDate)