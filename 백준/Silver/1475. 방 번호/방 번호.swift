import Foundation

let n = readLine()!.map{Int(String($0))!}
var arr = Array(repeating: 0, count: 10)

for i in n { arr[i] += 1 }

var cnt = 0
for i in 0..<10 {
    var c = arr[i]
    if (i == 6 || i == 9) {
        c = (arr[6] + arr[9])/2
        if ((arr[6] + arr[9])%2 == 1) { c += 1 }
    }
    cnt = (cnt < c) ? c : cnt
}
print(cnt)