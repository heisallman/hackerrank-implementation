import Foundation;

// Enter your code here


let n = Int(readLine()!)!
var sticks = readLine()!.components(separatedBy:" ").map { Int($0)! }

func cutSticks(_ input: [Int]) -> [Int] {
    
    print(input.count)
    
    if input.count <= 1 {
        return input
    }
    
    let smallestStick = input.sorted().first!
    var newValue = 0
    var newArray = [Int]()
    
    for item in input {
        newValue = item - smallestStick
        if newValue > 0 {
            newArray.append(newValue)
        }
    }
    if newArray.count == 0 {
        return input
    }
    return cutSticks(newArray)
}


cutSticks(sticks)