import Foundation

func solution(_ order:Int) -> Int {
    let order_str = String(order).map{String($0)}
    let clap = ["3", "6", "9"]
    var result = 0
    for s in order_str { if clap.contains(s) { result += 1} }
    return result
}