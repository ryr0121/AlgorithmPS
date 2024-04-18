import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var cnt = 0
var res:[String] = []

var lt = 0
var rt = n-1
var last = 0
while lt <= rt {
    if arr[lt]<arr[rt] {
        if last<arr[lt] {
            last = arr[lt]
            lt+=1
            res.append("L")
            cnt += 1
        } else if last<arr[rt] {
            last = arr[rt]
            rt-=1
            res.append("R")
            cnt += 1
        } else { break }
        
    } else if arr[rt]<arr[lt] {
        if last<arr[rt] {
            last = arr[rt]
            rt-=1
            res.append("R")
            cnt += 1
        } else if last<arr[lt] {
            last = arr[lt]
            lt+=1
            res.append("L")
            cnt += 1
        } else { break }
    }
}
print(cnt)
print(res.joined(separator: ""))
