import Foundation

let n = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").map { Int(String($0))! }
var average = Int(round(Double(scores.reduce(0) {$0+$1})/Double(n)))

var dist: [Int] = []
for i in 0..<n { dist.append(abs(scores[i]-average)) }

for i in 0..<n {
   if dist.min() == dist[i] { print("\(average) \(i+1)"); break; }
}
