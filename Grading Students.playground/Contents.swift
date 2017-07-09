import Foundation;

// Enter your code here

let n = Int(readLine()!)! 
var final = 0

for _ in 1 ... n {
    let grade = Int(readLine()!)!
    
    switch grade {
    case _ where grade < 38:
        final = grade
    case _ where grade < 40:
        final = 40
    case _ where grade % 5 >= 3:
        final = grade - (grade % 5) + 5
    default:
        final = grade
    }
    print(final)
}