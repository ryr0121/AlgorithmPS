import Foundation

func solution(_ code:String) -> String {
    var ret = ""
    let s = code.map{String($0)}
    var mode = 0
    for i in 0..<s.count {
        if(mode == 0) {
            if(s[i] != "1" && i%2 == 0) { ret += s[i] }
            else if(s[i] == "1") { mode = 1 }
        } else {
            if(s[i] != "1" && i%2 == 1) { ret += s[i] }
            else if(s[i] == "1") { mode = 0 }
        }
    }
    return ret.isEmpty ? "EMPTY" : ret
}