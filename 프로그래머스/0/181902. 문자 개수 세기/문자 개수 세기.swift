import Foundation

func solution(_ my_string:String) -> [Int] {
    var answer = Array(repeating: 0, count: 52) // 26*2
    let s = my_string.map{String($0)}
    for c in s {
        let a = Int(UnicodeScalar(c)!.value) // 65(A) -> 0, 97(a) -> 26
        if(a < 97) { answer[a-65] += 1 }
        else { answer[a-71] += 1 }
    }
    return answer
}