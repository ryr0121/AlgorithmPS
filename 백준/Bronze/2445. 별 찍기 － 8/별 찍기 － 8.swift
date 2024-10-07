import Foundation

var n = Int(readLine()!)!

if (n == 1) { print("**") }
else {
   for i in 1...n {
        var answer = ""
        for _ in 0..<i { answer += "*" }
        for _ in 0..<(2*n-2*i) { answer += " " }
        for _ in 0..<i { answer += "*" }
        print(answer)
    }
    
    for i in (1...(n-1)).reversed() {
        var answer = ""
        for _ in 0..<i { answer += "*" }
        for _ in 0..<(2*n-2*i) { answer += " " }
        for _ in 0..<i { answer += "*" }
        print(answer)
    } 
}