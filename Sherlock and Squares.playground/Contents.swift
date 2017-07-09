import Foundation;

// Enter your code here

let t = Int(readLine()!)!

for _ in 1...t {
    let input = readLine()!.components(separatedBy:" ").map { Double($0)! }
    var count = 0
    
    let sqrt1 = Int(ceil(sqrt(input[0])))
    let sqrt2 = Int(floor(sqrt(input[1])))
    
    let result = sqrt2 - sqrt1 + 1
    print(result)
}