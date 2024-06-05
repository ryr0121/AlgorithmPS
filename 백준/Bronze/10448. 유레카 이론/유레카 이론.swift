import Foundation

// 1000 이하의 삼각수 구하기
var tri = [1]
var add = 2
while true {
    tri.append(tri[tri.count-1]+add)
    add += 1
    if tri[tri.count-1] >= 1000 { break }
}

let tri_cnt = tri.count
let c = Int(readLine()!)!
for _ in 0..<c {
    var res = 0
    let k = Int(readLine()!)!
    for i in 0..<tri_cnt {
        for j in 0..<tri_cnt {
            for w in 0..<tri_cnt {
                if (tri[i]+tri[j]+tri[w]) == k { res = 1; break; }
            }
        }
    }
    print(res)
}