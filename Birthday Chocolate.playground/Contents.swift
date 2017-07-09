//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let squares = [1,2,1,3,2]
let ronBday = [3,2]

let chocTotal = ronBday[0]
let chocNum = ronBday[1]

var count = 0

for (index,_) in squares.enumerated() {
    
    if (index + chocNum) <= squares.endIndex {
        let subArray = Array(squares[index..<(index + chocNum)])
        if subArray.reduce(0, { $0 + $1 }) == chocTotal {
            count += 1
        }
    }
}


print(count)
