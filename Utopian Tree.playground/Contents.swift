//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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


calcHeight(1, 1)
calcHeight(1, 2)
calcHeight(1, 3)
calcHeight(1, 4)
calcHeight(1, 5)
calcHeight(1, 6)
calcHeight(1, 7)
calcHeight(1, 8)