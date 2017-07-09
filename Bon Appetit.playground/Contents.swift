//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let arr1 = [4,1]
var arr2 = [3,10,2,9]
let total = 7

arr2.remove(at: arr1[1])
let halfbill = (arr2.reduce(0, +))/2

switch halfbill {
case _ where halfbill == total:
    print("Bon Appetit")
case _ where total > halfbill:
    print(total - halfbill)
default:
    print(halfbill - total)
}