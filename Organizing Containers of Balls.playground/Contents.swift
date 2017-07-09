import Foundation;

// Enter your code here

let q = Int(readLine()!)!
var matrix = [[Int]]()
var n = 0

func ballSwap(_ matrix: [[Int]]) -> String {
    var columns = [Int]()
    for i in 0..<n {
        let balls = matrix.map({ $0[i] }).reduce(0, { $0 + $1 })
        columns.append(balls)
    }
    let rows = matrix.map({ $0.reduce(0, { $0 + $1 }) })
    return rows.sorted() == columns.sorted() ? "Possible" : "Impossible"
}

for _ in 1...q {
    n = Int(readLine()!)!
    matrix = [[Int]]()  // reset matrix for each new round
    for _ in 1...n {
        let line = readLine()!.components(separatedBy:" ").map { Int($0)! }
        matrix.append(line)
    }
    print(ballSwap(matrix))
}