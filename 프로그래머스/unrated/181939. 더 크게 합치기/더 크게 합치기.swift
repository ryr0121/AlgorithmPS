import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var a_b = Int(String(a)+String(b))!
    var b_a = Int(String(b)+String(a))!
    
    return (a_b < b_a) ? b_a : a_b
}