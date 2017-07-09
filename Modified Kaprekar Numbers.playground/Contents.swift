import Foundation;

// Enter your code here

let p = Int(readLine()!)!
let q = Int(readLine()!)!

var kaprekarList = [Int]()

func kaprekar(_ low: Int, _ high: Int) -> [Int] {
    
    for num in low...high {
        
        var numSquared = num * num
        var sum, left, right: Int
        var digits : [Int] = []
        
        switch numSquared {
        case 0..<10:
            while numSquared > 0 {
                digits.insert(numSquared % 10, at: 0)
                numSquared /= 10
            }
        case 10..<100:
            while numSquared > 0 {
                digits.insert(numSquared % 10, at: 0)
                numSquared /= 10
            }
        case 100..<10000:
            while numSquared > 0 {
                digits.insert(numSquared % 100, at: 0)
                numSquared /= 100
            }
        case 10000..<1000000:
            while numSquared > 0 {
                digits.insert(numSquared % 1000, at: 0)
                numSquared /= 1000
            }
        case 1000000..<100000000:
            while numSquared > 0 {
                digits.insert(numSquared % 10000, at: 0)
                numSquared /= 10000
            }
        default:
            while numSquared > 0 {
                digits.insert(numSquared % 100000, at: 0)
                numSquared /= 100000
            }
        }
        
        if num < 4 {
            sum = digits[0]
            
        } else {
            left = digits[0]
            right = digits[1]
            sum = left + right
        }
        
        if sum == num {
            kaprekarList.append(num)
        }
    }
    return kaprekarList
}

let result = kaprekar(p, q).map({ String($0) }).joined(separator: " ")
print(result != "" ? result : "INVALID RANGE")