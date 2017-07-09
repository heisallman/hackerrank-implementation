import Foundation;

// Enter your code here

let n = Int(readLine()!)!
let page = Int(readLine()!)!

print(min(page/2, n/2 - page/2))