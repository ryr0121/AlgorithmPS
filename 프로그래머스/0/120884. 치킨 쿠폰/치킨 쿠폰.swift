import Foundation

func solution(_ chicken:Int) -> Int {
    
    var coupons = chicken
    var chk = coupons/10
    var result = chk
    coupons = coupons - chk*10 + chk
    
    while coupons > 9 {
        chk = coupons/10
        result += chk
        coupons = coupons - chk*10 + chk
    }
    
    return result
}