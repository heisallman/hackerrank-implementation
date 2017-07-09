import Foundation;

// Enter your code here
var n = Int(readLine()!)!
var loopsAt = 3

while n > loopsAt {
    n = n - loopsAt
    loopsAt *= 2
}

print(loopsAt - n + 1)