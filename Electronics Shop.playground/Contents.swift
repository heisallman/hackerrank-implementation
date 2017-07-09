//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [10,2,3]
let keyboards = [3,1]
let usbDrives = [5,2,8]


let money = array[0]
var cost = 0
var max = -1


for keyboard in keyboards {
    for usbDrive in usbDrives {
        cost = keyboard + usbDrive
        if cost <= money && cost > max {
            max = cost
        }
    }
}

print("\(max)")