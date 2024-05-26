import Foundation

let info = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = Array(repeating: 0, count: info[1]+1)
for _ in 0..<info[0] {
    let q = readLine()!.split(separator: " ").map{Int(String($0))!}
    for j in (q[1]...info[1]).reversed() {
        arr[j] = (arr[j] > arr[j-q[1]]+q[0]) ? arr[j] : arr[j-q[1]]+q[0]
    }
}
print(arr[info[1]])
