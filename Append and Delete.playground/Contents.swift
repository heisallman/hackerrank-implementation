//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let s = "abcdef"
let t = "fedcba"
let k = 15


var sMap = s.characters

var sString = String(sMap)
var count = 0

for i in 0...sMap.count {
    
    if s == t {
        count = k
        break
    }
    
    sMap = sMap.dropLast()
    sString = String(sMap)
    count += 1
    
    if t.contains(sString) && sMap.count != 1 {
        let diff = t.characters.count - sString.characters.count
        count += diff
        break
    }
    
    if sMap.count == 0 {
        let diff = t.characters.count - sString.characters.count
        if count + diff <= k {
            count = k
        }
        break
    }
}


if String(t.characters) == sString && count <= k {
    print("Yes")
    
} else {
    print(count == k ? "Yes" : "No")
}