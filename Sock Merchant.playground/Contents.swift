//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let numOfSocks = 9
let sockValues = [10, 20, 20, 10, 10, 30, 50, 10, 20]


var dictionary = [Int:Int]()
var pairs = 0

for value in sockValues {
    if dictionary.index(forKey: value) == nil  {
        dictionary.updateValue(1, forKey: value)
    } else {
        if var existingValue = dictionary[value] {
            existingValue += 1
            dictionary.updateValue(existingValue, forKey: value)
        }
    }
}

for (key,value) in dictionary {
    pairs += (value/2)
}

print(pairs)