import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
let numbers = Set(readLine()!.components(separatedBy:" ").map { Int($0)! })

let n = array[0]
let d = array[1]

var count = 0

for number in numbers {
    if numbers.contains(number-d) && numbers.contains(number - 2 * d) {
        count += 1
    }
}

print(count)