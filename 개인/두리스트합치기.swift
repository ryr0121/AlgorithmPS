import Foundation

let n1 = Int(readLine()!)!
let arr1 = readLine()!.split(separator: " ").map{Int(String($0))!}
let n2 = Int(readLine()!)!
let arr2 = readLine()!.split(separator: " ").map{Int(String($0))!}

var p1 = 0
var p2 = 0
var result:[Int] = []
while (p1 < n1) && (p2 < n2) {
    if arr1[p1] <= arr2[p2] {
        result.append(arr1[p1])
        p1 += 1
    } else {
        result.append(arr2[p2])
        p2 += 1
    }
}
if p1 < n1 { for i in p1..<n1 { result.append(arr1[i]) } }
else if p2 < n2 { for i in p2..<n2 { result.append(arr2[i]) } }
print(result.map{String($0)}.joined(separator: " "))
