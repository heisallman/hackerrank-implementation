import Foundation;

// Enter your code here

let n = Int(readLine()!)! // Number of test cases

for _ in 1 ... n { // Loop from 1 to n
    let array = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    // do something with input
    let catA = array[0]
    let catB = array[1]
    let mouse = array[2]
    
    let mouseVSCatA = abs(mouse - catA)
    let mouseVSCatB = abs(mouse - catB)
    
    print(mouseVSCatA == mouseVSCatB ? "Mouse C" : (mouseVSCatA < mouseVSCatB ? "Cat A" : "Cat B"))
}