import Foundation;

// Enter your code here

// read array
let kangarooArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var kangaroo1Position = kangarooArr[0]
let kangaroo1Velocity = kangarooArr[1]

var kangaroo2Position = kangarooArr[2]
let kangaroo2Velocity = kangarooArr[3]


while true {
    
    kangaroo1Position += kangaroo1Velocity
    kangaroo2Position += kangaroo2Velocity
    
    if kangaroo1Position == kangaroo2Position {
        print("YES")
        break
    }
    
    if (kangaroo1Position > kangaroo2Position && kangaroo1Velocity > kangaroo2Velocity) ||
        (kangaroo2Position > kangaroo1Position && kangaroo2Velocity > kangaroo1Velocity) ||
        (kangaroo1Position > kangaroo2Position && kangaroo1Velocity == kangaroo2Velocity) ||
        (kangaroo2Position > kangaroo1Position && kangaroo2Velocity == kangaroo1Velocity) {
        print("NO")
        break
    }
}