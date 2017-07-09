import Foundation;

// Enter your code here

func jumpingOnClouds(_ clouds: [Int], _ jumpDistance:Int) -> Int {
    
    var energy = 100
    var i = 0
    var cycle = 0
    
    while cycle < 1 {
        i += jumpDistance
        i = i % clouds.count
        energy -= clouds[i] == 1 ? 3 : 1
        cycle += i % clouds.count == 0 ? 1 : 0
    }
    return energy
}

let input = readLine()!.components(separatedBy:" ").map { Int($0)! }
let numOfClouds = input[0]
let jumpDistance = input[1]

let clouds = readLine()!.components(separatedBy:" ").map { Int($0)! }

print(jumpingOnClouds(clouds,jumpDistance))
