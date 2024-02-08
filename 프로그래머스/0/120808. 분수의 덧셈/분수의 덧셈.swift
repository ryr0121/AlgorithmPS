import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var numer = numer1*denom2 + numer2*denom1
    var denom = denom1*denom2
    
    var div = 1
    for n in 1...denom {
        if (denom%n == 0) && (numer%n == 0) { div = n }
    } 
    return [numer/div, denom/div]
}