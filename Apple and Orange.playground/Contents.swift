import Foundation;

// Enter your code here

let hitRange = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let treePoints = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let applesOranges = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let apples = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let oranges = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var appleInRange = 0
var orangeInRange = 0

for apple in apples {
    let result = treePoints[0] + apple
    switch result {
    case hitRange[0]...hitRange[1]:
        appleInRange += 1
    default:
        continue
    }
}

for orange in oranges {
    let result = treePoints[1] + orange
    switch result {
    case hitRange[0]...hitRange[1]:
        orangeInRange += 1
    default:
        continue
    }
}

print(appleInRange)
print(orangeInRange)
