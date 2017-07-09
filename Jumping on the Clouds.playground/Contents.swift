import Foundation;

// Enter your code here

let number = Int(readLine()!)!
let clouds = readLine()!.components(separatedBy:" ").map({ Int($0)!})

var i = 0
var steps = 0

for (index,_) in clouds.enumerated() {
    
    if i == clouds.count - 1 {
        break
        
    } else if (i + 2) > (clouds.count - 1) {
        clouds[i + 1] == 0 ? (i += 1) : (i += 0)
        steps += 1
        
    } else {
        clouds[i + 2] == 0 ? (i += 2) : (i += 1)
        steps += 1
    }
}

print(steps)