import Foundation

let n = Int(readLine()!)!
var times:[(Int,Bool)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    times.append((input[0],true))
    times.append((input[1],false))
}
times.sort {
    if ($0.0 == $1.0) { return !$0.1 }
    else { return $0.0 < $1.0 }
}

var cnt = 0
var answer = 0
for time in times {
    if (time.1) { cnt += 1 }
    else { cnt -= 1 }
    answer = (answer < cnt) ? cnt : answer
}
print(answer)