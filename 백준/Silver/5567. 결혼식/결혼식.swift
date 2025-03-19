let n = Int(readLine()!)!
let m = Int(readLine()!)!

var dict:[Int:[Int]] = [:] // 1-based
for i in 1...n { dict[i] = [] }

for _ in 0..<m {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    dict[ab[0]]!.append(ab[1])
    dict[ab[1]]!.append(ab[0])
}

var ch = Array(repeating: false, count: n+1) // 1-based
for f in dict[1]! {
    ch[f] = true // 친구 체크
    for ff in dict[f]! { ch[ff] = true } // 친구의 친구 체크
}
var answer = 0
for i in 2...n {
    if(ch[i]) { answer += 1 }
}
print(answer)