import Foundation;

// Enter your code here

let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    
    let low = min(a,b)
    let high = max(a,b)
    
    var increment = high - low
    if a == b {
        increment = a
    }
    
    let start = low * (n-1)
    let end = high * (n-1) + increment
    
    var stones = Array(stride(from: start, to: end, by: increment)).sorted()
    print(stones.map({ String($0) }).joined(separator: " "))
}