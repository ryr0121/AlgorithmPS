import Foundation

func solution(_ polynomial:String) -> String {
    var arr = polynomial.split(separator: " ").map{String($0)}
    
    var x_num = 0
    var const = 0
    
    for a in arr {
        var temp = a.map{String($0)}
        if temp.contains("x") {
            var n_str = ""
            if temp.count == 1 { x_num += 1 }
            else {
                for t in temp { if t != "x" { n_str += t } }
                x_num += Int(n_str)!
            }
        } else if !temp.contains("+") { const += Int(a)! }
    }
    
    if x_num > 0 && const > 0 { 
        if x_num == 1 { return "x + \(const)"}
        else { return "\(x_num)x + \(const)" }
    }
    else if x_num > 0 && const == 0 { 
        if x_num == 1 { return "x" }
        else { return "\(x_num)x" }
    }
    else if x_num == 0 && const > 0 { return "\(const)" }
    else { return "" }
}