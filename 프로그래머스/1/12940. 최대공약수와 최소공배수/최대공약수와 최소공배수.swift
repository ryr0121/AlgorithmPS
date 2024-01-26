func solution(_ n:Int, _ m:Int) -> [Int] {
    var result = [1,1]
    
    for i in 2...max(n,m) {
        if (n%i == 0 && m%i == 0) { result[0] = i }
    }
    
    for i in 1...m*n {
        if (i%n == 0 && i%m == 0) { result[1] = i; break; }
    }
    
    return result
}