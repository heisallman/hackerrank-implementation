//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let array = [10,10]

let a = [100, 99, 98, 97, 96, 95, 94, 93, 92, 91].sorted()
let b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sorted()


var count = 0

for i in 1...100 {
    
    print(i)
    var mod_sum = 0
    
    for num in a {
        //        print("now checking num = \(num)")
        //        print("mod \(i) % \(num) = \(i % num)")
        mod_sum += i % num
    }
    
    for num in b {
        //        print("now checking num = \(num)")
        //        print("mod \(num) % \(i) = \(num % i)")
        mod_sum += num % i
    }
    
    if (mod_sum == 0) {
        count += 1
    }
}

print(count)