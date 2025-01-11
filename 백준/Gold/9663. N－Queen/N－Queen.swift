let N = Int(readLine()!)!

var ch1 = Array(repeating: false, count: N)
var ch2 = Array(repeating: false, count: N+N-1)
var ch3 = Array(repeating: false, count: N+N-1)
var answer = 0

queen(0)
print(answer)

func queen(_ idx: Int) -> Void {
    if(idx == N) {
        answer += 1
        return
    }
    for i in 0..<N {
        if(ch1[i] || ch2[i+idx] || ch3[idx-i+N-1]) { continue; }
        ch1[i] = true
        ch2[i+idx] = true
        ch3[idx-i+N-1] = true
        queen(idx+1)
        ch1[i] = false
        ch2[i+idx] = false
        ch3[idx-i+N-1] = false
    }
}