//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let numOfBirds = 6
let birds = [1, 4, 4, 4, 5, 3]

var counts = [Int: Int]()

let countedSet = NSCountedSet(array: birds)
let mostFrequent = countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) }

if let mostFrequent = mostFrequent {
    print(mostFrequent)
}