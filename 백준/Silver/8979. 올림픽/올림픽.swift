let nk = readLine()!.split(separator: " ").map{Int($0)!}
var scores:[[Int]] = []
for _ in 0..<nk[0] {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let total = input[1]*100 + input[2]*10 + input[3]
    scores.append([input[0],total])
}
scores.sort(by: { $0[1] > $1[1] })

var rank = 1
for i in 0..<nk[0]-1 {
    scores[i].append(rank)
    if scores[i][1] != scores[i+1][1] { rank += 1 }
}
scores[nk[0]-1].append(rank)

var res = 0
for i in 0..<nk[0] {
    if scores[i][0] == nk[1] { res = scores[i][2] }
}
print(res)