let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
let m = Int(readLine()!)!

var s = 1
var e = arr.max()!
var mid = 0
var sum = 0

while(s <= e) {
    mid = (s+e)/2
    sum = 0
    for num in arr { sum += (num > mid) ? mid : num }
    if(sum <= m) { s = mid+1 }
    else { e = mid-1 }
}
print(e)