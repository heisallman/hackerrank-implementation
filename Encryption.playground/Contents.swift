//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let string = "haveaniceday"
let input = Array(string.components(separatedBy: " ").joined().characters)
let count = input.count

var rows = floor(sqrt(Double(input.count)))
let columns = ceil(sqrt(Double(input.count)))

// This might not be necessary???
if (Int(rows) * Int(columns)) < count {
    rows = columns
}

var sentence = ""

for i in 0..<Int(columns) {
    var word = ""
    for (index,char) in input.enumerated() {
        if index % Int(columns) == i {
            word += String(char)
        }
    }
    sentence += word + " "
}

print(sentence)