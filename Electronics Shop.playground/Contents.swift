import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy: " ").map{Int($0)!}
let keyboards = readLine()!.components(separatedBy: " ").map{Int($0)!}
let usbDrives = readLine()!.components(separatedBy: " ").map{Int($0)!}


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