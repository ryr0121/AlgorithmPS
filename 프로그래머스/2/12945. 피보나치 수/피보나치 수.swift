func solution(_ n:Int) -> Int {
    var result = 0
    var arr = [0,1,1]   // F(0), F(1), F(2)
    
    for i in 3...n { arr.append((arr[i-1] + arr[i-2])%1234567) }
    return arr[n];
}