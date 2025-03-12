import Foundation

let ap = readLine()!.split(separator: " ").map{Int($0)!}
var counts = Array(repeating: 0, count: 1000000)

var q = [ap[0]]
counts[ap[0]] += 1
while(!q.isEmpty) {
    let cur = q.removeFirst()
    let arr = String(cur).map{Int(String($0))!}
    var res = 0
    for n in arr { res += Int(pow(Double(n), Double(ap[1]))) }

    if(counts[res] < 2) {
        q.append(res)
        counts[res] += 1
    }
}

var answer = 0
for i in 0..<1000000 {
    if(counts[i] == 1) { answer += 1 }
}
print(answer)