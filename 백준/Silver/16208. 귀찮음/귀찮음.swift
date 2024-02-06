import Foundation

var n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map {Int(String($0))!}

arr.sort()
var total = 0
for a in arr { total += a }

var result = 0
for a in arr {
    total -= a
    result += a * total
}
print(result)