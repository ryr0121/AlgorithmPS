let n = Int(readLine()!)!
var arr:[[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int($0)!}) }

var dict:[Int:[Int]] = [:]
for i in 0..<n {
    if(dict[i] == nil) { dict[i] = [] }
    for j in 0..<n {
        if(arr[i][j] == 1) { dict[i]!.append(j) }
    }
}

var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
var q:[Int] = []
for i in 0..<n {
    var ch = Array(repeating: false, count: n)
    for c in dict[i]! {
        q.append(c)
        ch[c] = true
    }
    while(!q.isEmpty) {
        let cur = q.removeFirst()
        answer[i][cur] = 1
        for j in dict[cur]! {
            if(!ch[j]) {
                q.append(j)
                ch[j] = true
            }
        }
    }
}

for i in 0..<n {
    var str = ""
    for j in 0..<n { str += "\(answer[i][j]) "}
    print(str)
}