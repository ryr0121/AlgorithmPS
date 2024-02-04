import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var direc = 0
    switch (direction) {
        case "left": direc = -1
        case "right": direc = 1
        default: return []
    }
    
    var result = numbers
    for i in 0..<numbers.count {
        var idx = (i+direc) % numbers.count
        if idx == -1 { idx += numbers.count }
        result[idx] = numbers[i]
    }
    
    return result
}