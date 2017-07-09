import Foundation;

// Enter your code here

let numOfSocks = Int(readLine()!)!
let sockValues = readLine()!.components(separatedBy: " ").map{ Int($0)! }


var dictionary = [Int:Int]()
var pairs = 0

for value in sockValues {
    if dictionary.index(forKey: value) == nil  {
        dictionary.updateValue(1, forKey: value)
    } else {
        if var existingValue = dictionary[value] {
            existingValue += 1
            dictionary.updateValue(existingValue, forKey: value)
        }
    }
}

for (key,value) in dictionary {
    pairs += (value/2)
}

print(pairs)
