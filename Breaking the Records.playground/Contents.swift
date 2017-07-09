//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let numOfGames = 10
let scores = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]

var minScore = scores[0]
var maxScore = scores[0]

var beatHighest = 0
var beatLowest = 0

for score in scores {
    if score < minScore {
        minScore = score
        beatLowest += 1
    }
    if score > maxScore {
        maxScore = score
        beatHighest += 1
    }
}

print("\(beatHighest, beatLowest)")