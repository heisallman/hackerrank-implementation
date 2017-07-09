import Foundation;

// Enter your code here

let num = Int(readLine()!)!

for _ in 1...num {
    let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let arrivalTimes = readLine()!.components(separatedBy:" ").map { Int($0)! }
    
    let students = array[0]
    let threshold = array[1]
    var lateStudents = 0
    
    for arrivals in arrivalTimes {
        if arrivals > 0 {
            lateStudents += 1
        }
    }
    print((students - lateStudents) < threshold ? "YES" : "NO")
}




