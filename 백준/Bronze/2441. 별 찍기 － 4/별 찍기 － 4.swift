import Foundation

let n = Int(readLine()!)!
for i in (1...n).reversed() {
    var answer = ""
    for _ in 0..<(n-i) { answer += " " }
    for _ in 0..<i { answer += "*" }
    print(answer)
}