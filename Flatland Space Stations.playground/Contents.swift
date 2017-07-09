import Foundation;

// Enter your code here

let input = readLine()!.components(separatedBy:" ").map { Int($0)! }
let numberOfCities = input[0]
let numberOfSS = input[1]

let citiesWithSS = readLine()!.components(separatedBy:" ").map { Int($0)! }.sorted()
var maxDistance = 0

for i in 1..<citiesWithSS.count {
    let distance = (citiesWithSS[i] - citiesWithSS[i - 1]) / 2
    maxDistance = distance > maxDistance ? distance : maxDistance
}
let firstGap = citiesWithSS[0]
maxDistance = firstGap > maxDistance ? firstGap : maxDistance

let lastGap = (numberOfCities - 1) - citiesWithSS.last!
maxDistance = lastGap > maxDistance ? lastGap : maxDistance

print(maxDistance)