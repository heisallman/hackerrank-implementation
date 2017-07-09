//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let input = "nrdyluacvr"

let sizes = [6,3,4,4,6,4,5,3,4,3,6,5,4,6,7,1,3,4,2,5,6,1,5,1,7,2]

let word = Array(input.characters).map({String($0)})
var maxHeight = 0
var width = word.count

for (index,char) in word.enumerated() {
    
    let charIndex = char as NSString
    let value = charIndex.character(at: 0) - 97
    
    let height = sizes[Int(value)]
    
    print("\(char) \(value) = \(height)")
    if height > maxHeight {
        maxHeight = height
    }
}


print(width * maxHeight)