import Foundation

let n = Int(readLine()!)!
for p in 1...n {
    var result = ""
    for q in 1...p { result += "*" }
    print(result)
}