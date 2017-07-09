import Foundation;

// Enter your code here


let numOfGames = Int(readLine()!)!
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

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

print("\(beatHighest) \(beatLowest)")

