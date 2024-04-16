import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = 0
var lt = 0
var rt = 1
var sum = arr[0]

while true {
    if sum < input[1] {
        if rt < input[0] {
            sum += arr[rt]
            rt += 1
        }
        else { break }
    } else {
        if sum == input[1] { cnt += 1 }
        sum -= arr[lt]
        lt += 1
    }
}
print(cnt)
