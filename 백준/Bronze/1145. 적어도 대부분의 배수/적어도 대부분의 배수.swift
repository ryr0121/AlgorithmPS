import Foundation

let nums = readLine()!.split(separator: " ").map{Int(String($0))!}

var res = 0
for n in 1...1000000 {
    var cnt = 0
    for num in nums { cnt += (n%num == 0) ? 1 : 0 }
    if cnt >= 3 { res = n; break; }
}
print(res)