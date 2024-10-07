import Foundation

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
arr.sort()

if (arr[0] == arr[1] && arr[1] == arr[2]) { print(10000 + arr[0]*1000) } 
else if (arr[0] == arr[1]) { print(1000 + arr[0]*100) } 
else if (arr[1] == arr[2]) { print(1000 + arr[1]*100) } 
else if (arr[0] == arr[2]) { print(1000 + arr[0]*100) } 
else { print(arr[2]*100) }