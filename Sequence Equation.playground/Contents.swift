import Foundation

// Enter your code here

let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy: " ").map { Int($0)! }

func sequenceEquation(_ input:[Int]){
    
    var pInverse = Array(repeating: 0, count: n + 1)
    
    for (x, px) in input.enumerated() {
        pInverse[px] = x + 1
    }
    
    for x in 1...n {
        print(pInverse[pInverse[x]])
    }
}


sequenceEquation(array)
