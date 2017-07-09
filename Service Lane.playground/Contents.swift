import Foundation;

// Enter your code here

let input = readLine()!.components(separatedBy:" ").map { Int($0)! }
let fwyLength = input[0]
let testCases = input[1]

let width = readLine()!.components(separatedBy:" ").map { Int($0)! }

for _ in 1...testCases{
    let testCase = readLine()!.components(separatedBy:" ").map { Int($0)! }
    print(width[testCase[0]...testCase[1]].sorted()[0])
}

