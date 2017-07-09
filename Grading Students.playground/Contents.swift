//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Grading Students
let n = 4
let G1 = 73
let G2 = 67
let G3 = 38
let G4 = 33


let arr = [G1,G2,G3,G4]
var result:[Int] = []
var final = 0

for grade in arr {
    switch grade {
    case _ where grade < 38:
        final = grade
    case _ where grade < 40:
        final = 40
    case _ where grade % 5 >= 3:
        final = grade - (grade % 5) + 5
    default:
        final = grade
    }
    print(final)
}

//print(result)