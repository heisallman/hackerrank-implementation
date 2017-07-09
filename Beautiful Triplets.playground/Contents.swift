//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [7,3]
let numbers = Set([1,2,4,5,7,8,10])

let n = array[0]
var d = array[1]


var count = 0

for number in numbers {
    if numbers.contains(number-d) && numbers.contains(number - 2 * d) {
        count += 1
    }
}

print(numbers)
print(count)