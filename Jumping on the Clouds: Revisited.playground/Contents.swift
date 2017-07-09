//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let input = [8,2]
let numOfClouds = input[0]
let jumpDistance = input[1]

let clouds = [0,0,1,0,0,1,1,0]


func jumpingOnClouds(_ clouds: [Int], _ jumpDistance:Int) -> Int {
    
    var energy = 100
    var i = 0
    var cycle = 0
    
    while cycle < 1 {
        i += jumpDistance
        i = i % clouds.count
        energy -= clouds[i] == 1 ? 3 : 1
        cycle += i % clouds.count == 0 ? 1 : 0
    }
    return energy
}


print(jumpingOnClouds(clouds,jumpDistance))