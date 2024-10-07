import Foundation

var n = Int(readLine()!)!

for i in (0..<n).reversed() {
    var answer = ""
    for _ in 0..<(n-1-i) { answer += " " }
    for _ in 0..<(2*i+1) { answer += "*" }
    print(answer)
}