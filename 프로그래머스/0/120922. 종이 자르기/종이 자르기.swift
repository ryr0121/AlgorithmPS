import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    var result = 0
    if M > N {
        result += N-1
        result += (M-1)*N
    } else {
        result += M-1
        result += (N-1)*M
    }
    return result
}