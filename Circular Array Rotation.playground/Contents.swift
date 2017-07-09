//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [3,2,3]

let arraySize = array[0]
let rotation = array[1]
let queries = array[2]

let numbers = [1,2,3]


func rotateArray(findIndex index: Int, inArray input: [Int], afterRotating rotation: Int) -> Int {
    
    var result = Array(repeating: 0, count: input.count)
    let factor = rotation % input.count
    
    for (index,item) in input.enumerated() {
        var newIndex = index + factor
        if newIndex > (input.count - 1) {
            newIndex = abs(input.count - newIndex)
        }
        //        print("\(index) -> newIndex: \(newIndex)")
        result[newIndex] = item
    }
    return result[index]
}


rotateArray(findIndex: 0, inArray: numbers, afterRotating: rotation)