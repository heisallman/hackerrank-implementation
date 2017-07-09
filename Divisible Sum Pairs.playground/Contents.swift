//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [2,2]
let numbers = [8,10,1,3,4,5,6,7,8]

let k = array[1]
var result = 0

for i in 0..<numbers.count {
    for index in i..<numbers.count {
        if index < numbers.count - 1 {
            print ("\(numbers[i]) and \(numbers[index + 1])")
            let num1 = numbers[i]
            let num2 = numbers[index + 1]
            (num1 + num2) % k == 0 ? (result += 1) : (result += 0)
            print("result = \((num1 + num2) % k)")
        }
    }
}

print(result)