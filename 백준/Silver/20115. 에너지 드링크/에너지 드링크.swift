import Foundation

let n = Int(readLine()!)!
var drinks = readLine()!.split(separator: " ").map { Int(String($0))! }
drinks.sort(by: >)

var sum = Double(drinks[0])
for i in 1..<n { sum += Double(drinks[i])/2.0 }
print(sum)