//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [5,7]
let hurdles = [2,5,4,5,2]

var maximumJump = array[1]
var numOfEnergyDrinks = 0

for hurdle in hurdles {
    
    let result = maximumJump - hurdle
    
    switch result {
    case _ where result < 0:
        numOfEnergyDrinks += abs(result)
        maximumJump += abs(result)
        
    default:
        continue
    }
}

print(numOfEnergyDrinks)