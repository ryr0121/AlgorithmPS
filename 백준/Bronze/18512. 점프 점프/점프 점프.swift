import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var res = -1
let start = (input[2] > input[3]) ? input[2] : input[3]

for dist in start...10000 {
    let a = (dist-input[2])%input[0]
    let b = (dist-input[3])%input[1]
    if a == 0 && b == 0 { res = dist; break; }
}
print(res)