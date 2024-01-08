import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var result = 0
    array.map { if ($0 > height) { result += 1 } } 
    return result
}