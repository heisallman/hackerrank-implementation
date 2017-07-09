import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let hurdles = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var maximumJump = array[1]
var numOfEnergyDrinks = 0

for hurdle in hurdles {
    
    let result = maximumJump - hurdle
    
    switch result {
    case _ where result < 0:
        numOfEnergyDrinks += abs(result)
        maximumJump += abs(result)
        
    default:
        continue
    }
}

print(numOfEnergyDrinks)