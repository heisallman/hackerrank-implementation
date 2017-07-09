import Foundation;

// Enter your code here

func calcHeight(_ startHeight: Int, _ growthCycles: Int) -> Int {
    
    var height = startHeight
    var cycles = growthCycles
    
    switch growthCycles {
        
    case 0:
        return height
        
    case 1:
        height += height
        return height
        
    case 2:
        height += height
        height += 1
        return height
        
    default:
        height += height
        height += 1
        cycles -= 2
        return calcHeight(height, cycles)
    }
}


let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    print(calcHeight(1, n))
}