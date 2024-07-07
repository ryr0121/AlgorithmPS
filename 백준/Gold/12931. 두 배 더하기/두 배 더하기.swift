import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var res = 0
while getSum(arr) != 0 {    
    var odd = false
    for i in 0..<n {
        if (arr[i]%2 == 1) || (arr[i] == 0) || (arr[i] == 1) {
            if arr[i] == 0 { continue }
            else {
                arr[i] -= 1
                res += 1
            }
            odd = true
        }
    }
    if !odd {
        for i in 0..<n { arr[i] /= 2 }
        res += 1
    }
}
print(res)

func getSum(_ arr: [Int]) -> Int {
    var sum = 0
    let len = arr.count
    for i in 0..<len { sum += arr[i] }
    return sum
}