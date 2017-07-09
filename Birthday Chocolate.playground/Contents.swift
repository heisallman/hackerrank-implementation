//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let squares = [4]
let ronBday = [4,1]

let chocTotal = ronBday[0]
let chocNum = ronBday[1]

var count = 0

for (index,_) in squares.enumerated() {
    
    if (index + chocNum) <= squares.endIndex {
        let subArray = Array(squares[index..<(index + chocNum)])
        if subArray.reduce(0, { $0 + $1 }) == chocTotal {
            count += 1
        }
        print(subArray)
    }
}


print(count)