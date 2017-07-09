import Foundation;

// Enter your code here

let sizes = readLine()!.components(separatedBy:" ").map { Int($0)! }
let input = readLine()!

let word = Array(input.characters).map({String($0)})
var maxHeight = 0
var width = word.count

for (index,char) in word.enumerated() {
    let charIndex = char as NSString
    let value = charIndex.character(at: 0) - 97
    let height = sizes[Int(value)]
    if height > maxHeight {
        maxHeight = height
    }
}
print(width * maxHeight)