import Foundation

func solution(_ rsp:String) -> String {
    var rsp_arr = rsp.map {String($0)}
    var result = ""
    
    for a in rsp_arr {
        switch a {
            case "2": result += "0"
            case "0": result += "5"
            case "5": result += "2"
            default: continue
        }
    }
    return result
}