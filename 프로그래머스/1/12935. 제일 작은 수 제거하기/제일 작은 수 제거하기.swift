func solution(_ arr:[Int]) -> [Int] {
    if arr.count < 2 { return [-1] }
    else {
        var result: [Int] = []
        let m = arr.min()
        for n in arr { if n != m { result.append(n) } }
        return result 
    }
}