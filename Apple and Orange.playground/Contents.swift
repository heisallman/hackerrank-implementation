//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let hitRange = [2,3]
let treePoints = [1,5]
let applesOranges = [1,1]
let apples = [2]
let oranges = [-2]


var appleInRange = 0
var orangeInRange = 0

for apple in apples {
    let result = treePoints[0] + apple
    switch result {
    case hitRange[0]...hitRange[1]:
        appleInRange += 1
    default:
        continue
    }
}

for orange in oranges {
    let result = treePoints[1] + orange
    switch result {
    case hitRange[0]...hitRange[1]:
        orangeInRange += 1
    default:
        continue
    }
}

print(appleInRange)
print(orangeInRange)