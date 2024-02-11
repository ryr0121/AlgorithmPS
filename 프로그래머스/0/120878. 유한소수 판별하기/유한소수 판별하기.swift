import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a%b == 0 { return 1 }
    
    // 기약분수로 만들기
    let min = a>b ? b : a
    var div = 1
    for n in 1...min { if a%n == 0 && b%n == 0 { div = n } }
    
    // 기약분수가 된 후 b의 소인수 구하기
    var b_divied = b/div
    var factors: [Int] = [] // 인수를 포함하는 배열
    for i in 2...b_divied {
        if b_divied%i == 0 {
            factors.append(i)
            while b_divied%i == 0 { b_divied /= i }
        }
    }
    
    for f in factors {
        if f != 2 && f != 5 { return 2 }
    }
    return 1
}