let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1000001)
var pre = Array(repeating: 0, count: 1000001) // 경로 추적용 배열
if (n > 1) {
    for i in 2...n {
        d[i] = d[i-1] + 1
        pre[i] = i-1
        
        if (i%2 == 0 && d[i] > d[i/2]+1) { 
            d[i] = d[i/2]+1
            pre[i] = i/2
        }
        if (i%3 == 0 && d[i] > d[i/3]+1) { 
            d[i] = d[i/3]+1
            pre[i] = i/3
        }
    }
}
print(d[n])
var pre_str = ""
var cur = n
while(true) {
    pre_str += "\(cur) "
    if(cur == 1) { break }
    cur = pre[cur]
}
print(pre_str)