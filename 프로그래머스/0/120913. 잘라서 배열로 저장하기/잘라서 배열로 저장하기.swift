import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    let str_arr = my_str.map{String($0)}
    var result: [String] = []
    var temp = ""
    for i in 0..<my_str.count {
        if i > 0 && i%n == 0 {
            result.append(temp)
            temp = ""
        } 
        temp += str_arr[i]
    }
    if temp != "" { result.append(temp) }
    return result
}