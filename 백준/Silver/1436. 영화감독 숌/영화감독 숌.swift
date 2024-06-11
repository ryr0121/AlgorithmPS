import Foundation

let n = Int(readLine()!)!
var cnt = 0
var res = 665 

while true { 
    res += 1 
    let str = String(res)
    var chk = 0
    for c in str {
        if c == "6" { chk += 1 }  
        else { chk = 0 }
        if chk == 3 { cnt += 1 }
    }

    if n == cnt { 
        print(res)
        break
    }
}