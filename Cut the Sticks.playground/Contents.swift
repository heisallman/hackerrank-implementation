//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let n = 6

var sticks = [8, 8, 14, 10, 3, 5, 14, 12]

func cutSticks(_ input: [Int]) -> [Int] {
    
    print(input.count)
    
    if input.count <= 1 {
        return input
    }
    
    let smallestStick = input.sorted().first!
    var newValue = 0
    var newArray = [Int]()
    
    for item in input {
        newValue = item - smallestStick
        if newValue > 0 {
            newArray.append(newValue)
        }
    }
    if newArray.count == 0 {
        return input
    }
    
    return cutSticks(newArray)
}


cutSticks(sticks)