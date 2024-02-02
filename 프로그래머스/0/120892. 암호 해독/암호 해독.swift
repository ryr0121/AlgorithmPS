import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    let ci_str = cipher.map{String($0)}
    var result = ""
    
    for i in 1...ci_str.count {
        if i%code == 0 { result += ci_str[i-1] }
    }
    return result
}