//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let kangarooArr = [43,2,70,2]

var kangaroo1Position = kangarooArr[0]
let kangaroo1Velocity = kangarooArr[1]

var kangaroo2Position = kangarooArr[2]
let kangaroo2Velocity = kangarooArr[3]


while true {
    
    kangaroo1Position += kangaroo1Velocity
    kangaroo2Position += kangaroo2Velocity
    
    print("\(kangaroo1Position, kangaroo2Position)")
    
    if kangaroo1Position == kangaroo2Position {
        print("YES")
        break
    }
    
    if (kangaroo1Position > kangaroo2Position && kangaroo1Velocity > kangaroo2Velocity) ||
        (kangaroo2Position > kangaroo1Position && kangaroo2Velocity > kangaroo1Velocity) ||
        (kangaroo1Position > kangaroo2Position && kangaroo1Velocity == kangaroo2Velocity) ||
        (kangaroo2Position > kangaroo1Position && kangaroo2Velocity == kangaroo1Velocity) {
        print("NO")
        break
    }
}