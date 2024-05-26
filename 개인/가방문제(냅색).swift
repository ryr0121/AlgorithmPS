import Foundation

let info = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = Array(repeating: 0, count: info[1]+1)
for _ in 0..<info[0] {
    let jew = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in jew[0]...info[1] {
        arr[j] = (arr[j] > (arr[j-jew[0]]+jew[1])) ? arr[j] : arr[j-jew[0]]+jew[1]
    }
}
print(arr[info[1]])
