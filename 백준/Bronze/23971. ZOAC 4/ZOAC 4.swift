import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var H = input[0], W = input[1], N = input[2], M = input[3]

let x = ceil(Double(H)/Double(N+1))
let y = ceil(Double(W)/Double(M+1))
print(Int(x*y))