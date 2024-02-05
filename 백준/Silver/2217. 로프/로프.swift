import Foundation

let n = Int(readLine()!)!
var weights:[Int] = []

for _ in 0..<n { weights.append(Int(readLine()!)!) }
weights.sort(by: >)

var poss_weights:[Int] = []
for i in 1...n { poss_weights.append(weights[i-1]*i) }
print(poss_weights.max()!)