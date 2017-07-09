import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map({ Int($0)! })
let numbers = readLine()!.components(separatedBy:" ").map({ Int($0)! })

let k = array[1]
var result = 0

for i in 0..<numbers.count {
    for index in i..<numbers.count {
        if index < numbers.count - 1 {
            let num1 = numbers[i]
            let num2 = numbers[index + 1]
            (num1 + num2) % k == 0 ? (result += 1) : (result += 0)
        }
    }
}

print(result)