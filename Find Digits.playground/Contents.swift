import Foundation;

// Enter your code here

let n = Int(readLine()!)!

for _ in 1...n {
    var input = Int(readLine()!)!
    var num = input
    
    var digits : [Int] = []
    var count = 0
    
    while num > 0 {
        digits.insert(num % 10, at: 0)
        num /= 10
    }
    
    for digit in digits {
        
        if digit == 0 {
            continue
        }
        if input % digit == 0 {
            count += 1
        }
    }
    print(count)
}
