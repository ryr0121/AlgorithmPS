import Foundation

let n = Int(readLine()!)!
let val = readLine()!.split(separator: " ").map { Int(String($0))! }
var acc = 0
var result = 0

for i in 0..<n {
    if val[i] == 0 { acc = 0 }
    else {
        result += val[i] + acc
        acc += 1
    }
}
print(result)
