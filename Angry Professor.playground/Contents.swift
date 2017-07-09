//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let num = 2
let array = [10,7]
let arrivalTimes = [26, 94, -95, 34, 67, -97, 17, 52, 1, 86]


let students = array[0]
let threshold = array[1]

var lateStudents = 0

for arrivals in arrivalTimes {
    if arrivals > 0 {
        lateStudents += 1
    }
}

print(students)
print(lateStudents)
print(students - lateStudents)
print(threshold)

print((students - lateStudents) < threshold ? "YES" : "NO")