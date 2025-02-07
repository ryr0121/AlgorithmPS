let N = Int(readLine()!)!
var answer = ""
for _ in 0..<N {
    let st = readLine()!.split(separator: " ").map{String($0)}
    let s = st[0].map{Character(String($0))}
    let t = st[1].map{Character(String($0))}

    for i in 0..<s.count {
        if(s[i] == "x" || s[i] == "X") { answer += t[i].uppercased() }
    }
}
print(answer)