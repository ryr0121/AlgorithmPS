let nm = readLine()!.split(separator: " ").map{Int($0)!}
var dict:[Int:[Int]] = [:]
for _ in 0..<nm[1] {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    
    if(dict[ab[0]] == nil) { dict[ab[0]] = [ab[1]] }
    else { dict[ab[0]]!.append(ab[1]) }
    
    if(dict[ab[1]] == nil) { dict[ab[1]] = [ab[0]] }
    else { dict[ab[1]]!.append(ab[0]) }
}

var b = Array(repeating: 0, count: nm[0]) // 0-based
for i in 1...nm[0] {
    var q = [i]
    var len = Array(repeating: -1, count: nm[0]+1) // 1-based, 거리
    len[i] = 0
    
    while(!q.isEmpty) {
        let cur = q.removeFirst()
        for num in dict[cur]! {
            if(len[num] > -1) { continue }
            len[num] = len[cur]+1
            q.append(num)
        }
    }

    for idx in 1...nm[0] { b[i-1] += len[idx] }
}

let min_b = b.min()!
for i in 0..<nm[0] {
    if(b[i] == min_b) {
        print(i+1)
        break
    }
}