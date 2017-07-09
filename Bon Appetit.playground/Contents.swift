import Foundation;

// Enter your code here

let arr1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var arr2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let total = Int(readLine()!)!

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