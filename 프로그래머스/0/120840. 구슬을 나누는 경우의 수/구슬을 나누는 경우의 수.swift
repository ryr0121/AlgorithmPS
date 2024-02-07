import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    var result = 1.0
    for i in 0..<share {
        result *= Double(balls-i)/Double(share-i)
    }
    return Int(round(result))
}