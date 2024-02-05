import Foundation

var n = Int(readLine()!)!
var result = 0

result += n/5
n %= 5

if result > 0 {
    while result > -1 {
        if (n%2 == 0) {
            result += n/2
            break
        } else {
            result -= 1
            n += 5
        }
    }
    
    print(result==0 ? -1 : result)
    
} else {
    if n%2 == 0 { print(n/2) } 
    else { print(-1) }
}