import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
let arraySize = array[0]
let rotation = array[1]
let queries = array[2]

let numbers = readLine()!.components(separatedBy:" ").map { Int($0)! }

func rotateArray(findIndex index: Int, inArray input: [Int], afterRotating rotation: Int) -> Int {
    var result = Array(repeating: 0, count: input.count)
    let factor = rotation % input.count
    for (index,item) in input.enumerated() {
        var newIndex = index + factor
        if newIndex > (input.count - 1) {
            newIndex = abs(input.count - newIndex)
        }
        result[newIndex] = item
    }
    return result[index]
}

for _ in 1...queries {
    let index = Int(readLine()!)!
    print(rotateArray(findIndex: index, inArray: numbers, afterRotating: rotation))
}

