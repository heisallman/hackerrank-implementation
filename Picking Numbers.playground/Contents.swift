//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let num = 6
let a = [4,6,5,3,3,1]

let set = NSCountedSet(array: a)
var maxNum = 0

for item in set {
    var total = 0
    let plusOne = item as! Int + 1
    if set.contains(plusOne) {
        total = set.count(for: item) + set.count(for: plusOne)
    } else {
        total = set.count(for: item)
    }
    maxNum = total > maxNum ? total : maxNum
}

print(maxNum)