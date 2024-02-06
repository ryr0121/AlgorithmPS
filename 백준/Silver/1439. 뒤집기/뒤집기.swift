import Foundation

var input = readLine()!.map{String($0)}
var cnt_0 = 0
var cnt_1 = 0

var current = ""
for s in input {
    if current == s { continue }
    else {
        current = s
        if s == "0" { cnt_0 += 1 } 
        else { cnt_1 += 1 }
    }
}
print([cnt_0, cnt_1].min()!)