//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let input = [4,5]
let n = input[0]
let t = input[1]

var topics = [["10101"],  // person 1 knows topics 1,3 & 5
    ["11100"],  // person 2 knows topics 1,2 & 3
    ["11010"],  // person 3 knows topics 1,2 & 4
    ["00101"]]  // person 4 knows topics 3 & 5


var maxTeams = NSCountedSet()
var maxTopics = 0
var matchingTopics = 0


var topicsSplit = topics.flatMap({
    $0.map({
        $0.characters.map({ String($0) })
    })
})


func teams(_ topics: [[String]]) -> (Int,Int) {
    
    for i in 0...topics.count - 2 {
        
        for k in (i + 1)...topics.count - 1 {
            matchingTopics = 0
            
            for j in 0...topics[i].count - 1 {
                matchingTopics += (topics[i][j] == "1" || topics[k][j] == "1") ? 1 : 0
            }
            
            if matchingTopics > maxTopics {
                maxTopics = matchingTopics
            }
            
            maxTeams.add(matchingTopics)
        }
    }
    return (maxTopics,maxTeams.count(for: maxTopics))
}


let result = teams(topicsSplit)

print(result.0)
print(result.1)