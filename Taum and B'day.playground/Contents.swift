import Foundation;

// Enter your code here

func taum(_ gifts: [Int], _ costs: [Int]) -> Int {
    
    var blackTotal = 0
    var whiteTotal = 0
    
    let black = gifts[0]
    let white = gifts[1]
    
    let costBlack = costs[0]
    let costWhite = costs[1]
    let costSwap = costs[2]
    
    // Black
    if costBlack <= costWhite + costSwap {
        blackTotal = black * costBlack
        
    } else {
        blackTotal = (black * costWhite) + (black * costSwap)
    }
    
    // White
    if costWhite <= costBlack + costSwap {
        whiteTotal = white * costWhite
        
    } else {
        whiteTotal = (white * costBlack) + (white * costSwap)
        
    }
    
    return blackTotal + whiteTotal
}

let t = Int(readLine()!)!

for _ in 1...t {
    let gifts = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let costs = readLine()!.components(separatedBy:" ").map { Int($0)! }
    print(taum(gifts, costs))
}


