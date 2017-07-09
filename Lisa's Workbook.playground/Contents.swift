import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
let problems = readLine()!.components(separatedBy:" ").map { Int($0)! }

let numOfChapters = array[0]
let maxPerPage = array[1]

var count = 0
var pages = 0

for problem in problems {
    var page = 0
    for i in 0..<problem {
        page = (i/maxPerPage) + 1
        if (i+1) == pages + ((i/maxPerPage)+1) {
            count += 1
        }
    }
    pages += page
}
print(count)