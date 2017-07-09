//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let queries = 3
let array = [2,1,3]

let catA = array[0]
let catB = array[1]
let mouse = array[2]

let mouseVSCatA = abs(mouse - catA)
let mouseVSCatB = abs(mouse - catB)

print(mouseVSCatA == mouseVSCatB ? "Mouse C" : (mouseVSCatA < mouseVSCatB ? "Cat A" : "Cat B"))