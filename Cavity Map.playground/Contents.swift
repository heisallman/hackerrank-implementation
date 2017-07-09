import Foundation;

// Enter your code here

let n = Int(readLine()!)!
var input = [[String]]()
var x, t, b, l, r: Int

for i in 1...n {
    let row = readLine()!.components(separatedBy:" ").map { String($0)! }
    input.append(row)
}

var inputString = input.map({
    $0.flatMap({
        Array(String($0).characters).map({
            String($0)
        })
    })
})

var inputInt = inputString.map({
    $0.map({
        Int($0)!
    })
})


func evaluate(compare: Int, with input:Int...) -> Bool {
    let list = input.sorted().last!
    return compare > list ? true : false
}


for (rIndex,row) in inputInt.enumerated() {
    
    for (cIndex,cell) in row.enumerated() {
        
        switch (rIndex){
        case 0:
            continue
            
        case inputInt.endIndex - 1:
            continue
            
        default:
            switch (cIndex) {
            case 0:
                continue
                
            case row.endIndex - 1:
                continue
                
            default:
                x = inputInt[rIndex][cIndex]
                r = row[cIndex + 1]
                l = row[cIndex - 1]
                b = inputInt[rIndex + 1][cIndex]
                t = inputInt[rIndex - 1][cIndex]
                inputString[rIndex][cIndex] = evaluate(compare: x, with: r,l,b,t) ? "X" : inputString[rIndex][cIndex]
            }
        }
    }
}


for row in inputString{
    print(row.joined())
}