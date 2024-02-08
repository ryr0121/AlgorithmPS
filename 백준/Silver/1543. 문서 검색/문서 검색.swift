import Foundation

let arr = readLine()!.map{String($0)}
let str = readLine()!
let str_arr = str.map{String($0)}

var result = 0
var i = 0
while i <= arr.count-str.count {    
    var temp = ""
    for n in i..<i+str.count { temp += arr[n] }
    if temp == str { result += 1; i += str.count; }
    else { i += 1 }
}
print(result)