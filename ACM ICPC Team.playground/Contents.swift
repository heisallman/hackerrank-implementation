import Foundation;

// Enter your code here

let input = readLine()!.components(separatedBy:" ").map { Int($0)! }
let n = input[0]
let t = input[1]

var topics = [[String]]()

for _ in 1...n {
    let line = readLine()!.components(separatedBy:" ").map { String($0)! }
    topics.append(line)
}

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
