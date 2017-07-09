import Foundation;

// Enter your code here

let string = readLine()!
let number = Int(readLine()!)!

var result = 0

let divisible = number / string.characters.count
let remainder = number % string.characters.count

for (index,char) in string.characters.enumerated() where index < number {
    if char == "a" {
        result += 1
    }
}

result = result * divisible

for (index,char) in string.characters.enumerated() where index < remainder {
    if char == "a" {
        result += 1
    }
}

print(result)