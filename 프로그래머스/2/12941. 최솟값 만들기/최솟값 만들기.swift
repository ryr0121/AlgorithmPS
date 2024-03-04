import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    var a = A.sorted{$0 < $1}
    var b = B.sorted{$0 > $1}
    
    for i in 0..<a.count { ans += a[i]*b[i] }
    
    return ans
}