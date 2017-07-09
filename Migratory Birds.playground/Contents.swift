import Foundation;

// Enter your code here


let n = Int(readLine()!)!
let birds = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var counts = [Int: Int]()

let countedSet = NSCountedSet(array: birds)
let mostFrequent = countedSet.max { countedSet.count(for: $0) < countedSet.count(for: $1) }

if let mostFrequent = mostFrequent {
    print(mostFrequent)
}
 
