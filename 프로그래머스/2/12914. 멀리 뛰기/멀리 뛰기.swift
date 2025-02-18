func solution(_ n:Int) -> Int {
    // 방법 수
    // 1칸 : 1 (1개)
    // 2칸 : 1+1, 2 (2개)
    // 3칸 : 1+1+1, 1+2, 2+1 (3개)
    // 4칸 : 1+1+1+1, 1+1+2, 1+2+1, 2+1+1, 2+2 (5개)
    // ...
    // n칸 : n-2칸의 방법 + n-1칸의 방법
    
    var d = Array(repeating: 0, count: n+1)
    if(n < 3) { return n }
    d[1] = 1
    d[2] = 2
    for i in 3...n { d[i] = (d[i-2] + d[i-1]) % 1234567 }
    
    return d[n]
}