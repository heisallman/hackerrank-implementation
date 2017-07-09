import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }

let days = Array(array[0]...array[1])
let divisor = array[2]
var beautifulDays = 0

func reverse(input: Int) -> Int {
    var result = 0
    var inputx = input
    while inputx != 0 {
        result = result * 10 + inputx % 10
        inputx = inputx / 10
    }
    return result
}


for day in days {
    let result = Double((day - reverse(input: day))) / Double(divisor)
    if result == floor(result) {
        beautifulDays += 1
    }
}

print(beautifulDays)