import Foundation

let a = readLine()!.map{String($0)}
let b = readLine()!.map{String($0)}

var a_alp = Array(repeating: 0, count: 26)
var b_alp = Array(repeating: 0, count: 26)

for c in a {
    let idx = Int(UnicodeScalar(c)!.value-97)
    a_alp[idx] += 1
}

for c in b {
    let idx = Int(UnicodeScalar(c)!.value-97)
    b_alp[idx] += 1
}

var cnt = 0
for i in 0..<26 {
    if (a_alp[i] != b_alp[i]) { cnt += abs(a_alp[i]-b_alp[i]) }
}
print(cnt)