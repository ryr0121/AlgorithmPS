import Foundation

let n = Int(readLine()!)!
var times:[[Int]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    times.append(input)
}
times.sort { a,b in
    if (a[1]==b[1]) { return a[0] <= b[0] }
    else { return a[1] <= b[1] }
}

var end_time = times[0][1]
var answer = 1
for i in 1..<n {
    if(times[i][0] >= end_time) { 
        answer += 1
        end_time = times[i][1]
    }
}
print(answer)