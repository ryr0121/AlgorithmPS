import Foundation

let word = readLine()!.map{String($0)}
var alpabet_cnt = Array(repeating: 0, count: 26)

for w in word {
    let a = Int(UnicodeScalar(w)!.value)
    alpabet_cnt[a-97] += 1
}

var answer = ""
for c in alpabet_cnt { answer += "\(c) " }
print(answer)