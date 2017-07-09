import Foundation;

// Enter your code here

var wrapperValue = 0
var total = 0

func chocolates(_ dollars: Int, _ cost: Int, _ wrapperValue: Int) -> Int {
    total += dollars/cost
    return tradeInWrappers(dollars/cost, dollars/cost)
}

func tradeInWrappers(_ w: Int, _ t: Int) -> Int {
    if w < wrapperValue {
        return total
        
    } else {
        let newchoc = w/wrapperValue
        total += newchoc
        let remainder = (w % wrapperValue) + (newchoc)
        return tradeInWrappers(remainder, t - remainder)
    }
}

let t = Int(readLine()!)!

for _ in 1...t {
    let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
    let dollars = array[0]
    let cost = array[1]
    wrapperValue = array[2]
    total = 0
    print(chocolates(dollars, cost, wrapperValue))
}

