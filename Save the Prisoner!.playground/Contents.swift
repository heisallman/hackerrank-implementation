//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [5, 5, 1]

let prisoners = array[0]
let sweets = array[1]
let start = array[2] - 1


func saveThePrisoner(prisoners:Int, sweets: Int, start:Int) -> Int {
    guard (sweets % prisoners) + start != 0 else { return prisoners }
    var result = sweets % prisoners + start
    if result > prisoners { result -= prisoners }
    return result
}

print(saveThePrisoner(prisoners: prisoners, sweets: sweets, start: start))