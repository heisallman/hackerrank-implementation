import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let array = readLine()!.components(separatedBy:" ").map { Int($0)! }

var result = [Int]()

for (index,number) in array.enumerated() {
    for i in (index + 1)..<array.count {
        if number == array[i] {
            let distance = i - index
            result.append(distance)
        }
    }
}

print(result.sorted().first ?? "-1")