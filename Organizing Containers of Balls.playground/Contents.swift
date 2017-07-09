//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let q = 2

let n = 2
let matrix = [[999789250, 999886349],
              [999654053, 999789250]]


func ballSwap(_ matrix: [[Int]]) -> String {
    
    var columns = [Int]()
    
    for i in 0..<n {
        let balls = matrix.map({
            $0[i]
        }).reduce(0, {
            $0 + $1
        })
        columns.append(balls)
    }
    
    let rows = matrix.map({
        $0.reduce(0, {
            $0 + $1
        })
    })
    
    print(rows,columns)
    
    return rows.sorted() == columns.sorted() ? "Possible" : "Impossible"
}


print(ballSwap(matrix))