import Foundation;

let input = readLine()!
let n = Int(input.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))!

func saveThePrisoner(prisoners:Int, sweets: Int, start:Int) -> Int {
    guard (sweets % prisoners) + start != 0 else { return prisoners }
    var result = sweets % prisoners + start
    if result > prisoners { result -= prisoners }
    return result
}

for _ in 1...n {
    let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let prisoners = array[0]
    let sweets = array[1]
    let start = array[2] - 1
    print(saveThePrisoner(prisoners: prisoners, sweets: sweets, start: start))
}