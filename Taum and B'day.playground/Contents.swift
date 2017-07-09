//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let t = 5

let gifts = [7, 7]
let costs = [4, 2, 1]


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


print(taum(gifts, costs))