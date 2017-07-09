//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let input = 106108048

var digits : [Int] = []
var count = 0

var num = input
while num > 0 {
    digits.insert(num % 10, at: 0)
    num /= 10
}

for digit in digits {
    
    if digit == 0 {
        continue
    }
    if input % digit == 0 {
        count += 1
    }
    print(count)
}