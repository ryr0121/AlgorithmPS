import Foundation

let n = Int(readLine()!)!
var res = 0

for i in 1...n {
    var sum = i
    let list = String(i).map{String($0)}
    for c in list { sum += Int(c)! }
    if sum == n { res = i; break; }
}
print(res)