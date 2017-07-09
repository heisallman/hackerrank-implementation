import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }

let a = readLine()!.components(separatedBy:" ").map { Int($0)! }
let b = readLine()!.components(separatedBy:" ").map { Int($0)! }

var count = 0

for i in 1...100 {
    
    var mod_sum = 0
    
    for num in a {
        mod_sum += i % num
    }
    
    for num in b {
        mod_sum += num % i
    }
    
    if (mod_sum == 0) {
        count += 1
    }
}

print(count)