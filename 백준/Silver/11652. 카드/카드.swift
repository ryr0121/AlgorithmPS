let N = Int(readLine()!)!
var arr:[Int] = []
for _ in 0..<N { arr.append(Int(readLine()!)!) }
arr.sort()

var answer = 0
var max_cnt = 0
var cnt = 1
var cur = arr[0]

for i in 1..<N {
    if(cur == arr[i]) { cnt += 1 }
    else {
        if(max_cnt < cnt) {
            answer = cur
            max_cnt = cnt
        }
        cnt = 1
        cur = arr[i]
    }
}
if(max_cnt < cnt) { answer = cur }

print(answer)