import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var arr = array.sorted(by: >)
    var diff = abs(arr[0]-n)
    var result = arr[0]
    for a in arr { 
        if abs(a-n) <= diff { 
            diff = abs(a-n)
            result = a 
        } 
    }
    return result
}