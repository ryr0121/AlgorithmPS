import Foundation

let n = Int(readLine()!)!
var prices:[Int] = []
for _ in 0..<n { prices.append(Int(readLine()!)!) }
prices.sort(by: >)

var sum = 0
if n < 3 { 
    for i in 0..<n { sum += prices[i] }
} else {
    for i in 0..<n {
        if (i+1)%3 == 0 { continue }
        else { sum += prices[i] }
    }
}
print(sum)