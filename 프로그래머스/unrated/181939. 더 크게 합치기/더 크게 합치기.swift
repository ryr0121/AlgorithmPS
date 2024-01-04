import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var a_b: String = String(a)+String(b)
    var b_a: String = String(b)+String(a)
    
    var temp1 = Int(a_b)!
    var temp2 = Int(b_a)!
    return (temp1 < temp2) ? temp2 : temp1
}