import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let squares = readLine()!.components(separatedBy:" ").map { Int($0)! }
let ronBday = readLine()!.components(separatedBy:" ").map { Int($0)! }

let chocTotal = ronBday[0]
let chocNum = ronBday[1]

var count = 0

for (index,_) in squares.enumerated() {
    
    if (index + chocNum) <= squares.endIndex {
        let subArray = Array(squares[index..<(index + chocNum)])
        if subArray.reduce(0, { $0 + $1 }) == chocTotal {
            count += 1
        }
    }
}

print(count)