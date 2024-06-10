import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = 0
let targer = String(input[1])
for n in 1...input[0] {
    let list = String(n).map{String($0)}
    for c in list { cnt += (c == targer) ? 1 : 0 }
}
print(cnt)