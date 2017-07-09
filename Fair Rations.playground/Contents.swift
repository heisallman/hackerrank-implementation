import Foundation;

// Enter your code here

let n = Int(readLine()!)!
var array = readLine()!.components(separatedBy:" ").map { Int($0)! }

func giveRations(_ input: [Int]) -> String {
    var count = 0
    guard array.reduce(0, +) % 2 == 0 else {
        return "NO"
    }
    for (index,_) in array.enumerated() {
        if array[index] % 2 != 0 {
            array[index] = array[index] + 1
            array[index + 1] = array[index + 1] + 1
            count += 2
        }
    }
    return String(count)
}

print(giveRations(array))