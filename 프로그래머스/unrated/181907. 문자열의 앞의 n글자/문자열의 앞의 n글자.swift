import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    // let strings = my_string.map { return String($0) }
    // var answer = ""
    // var i = 0
    // while (i < n) {
    //     answer += strings[i]
    //     i += 1
    // }
    // return answer
    return String(my_string.prefix(n))
}