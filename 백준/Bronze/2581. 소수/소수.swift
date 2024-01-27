import Foundation

func solution(_ m:Int, _ n:Int) -> Void {
    var sum = 0
    var min = -1

    for p in m...n {
        if isDecimal(p) {
            sum += p
            if (min == -1 || min > p) { min = p }
        }
    }
    if (sum == 0) { print(-1) }
    else {
        print(sum)
        print(min)
    }

}

func isDecimal(_ n:Int) -> Bool {
    if (n == 1) { return false }
    for i in 2..<n { if (n%i == 0) { return false } }
    return true
}

let m = Int(readLine()!)!  
let n = Int(readLine()!)!  

solution(m,n)