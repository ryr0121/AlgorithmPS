import Foundation

var n = Int(readLine()!)!
var result:[String] = []
if n%2 == 0 {
    for i in 0..<n { result.append(i%2 == 0 ? "1" : "2") }
    
} else {
    n -= 1
    for i in 0..<n { result.append(i%2 == 0 ? "1" : "2") }
    result.append("3")
}

print(result.joined(separator: " "))