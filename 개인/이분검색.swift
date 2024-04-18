import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()

var s = 0
var e = input[0]-1
var m = input[0]/2-1

if arr[input[0]/2-1] > input[1] { e = input[0]/2-1 }
else if arr[input[0]/2-1] < input[1] { s = input[0]/2-1 }
else { print(input[0]/2) }

while s <= e {
    if arr[(s+m)/2] == input[1] { print((s+m)/2+1); break; }
    else if arr[(s+m)/2] < input[1] { s += 1 }
    else { m -= 1 }
}
