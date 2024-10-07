import Foundation

var n = Int(readLine()!)!

if (n == 1) { print("*") }
else {
    for i in 0..<n {
        var answer = ""
        for _ in 0..<i { answer += " " }
        for _ in 1..<(2*(n-i)) { answer += "*" }
        print(answer)
    }

    for i in (0..<(n-1)).reversed() {
        var answer = ""
        for _ in 0..<i { answer += " " }
        for _ in 1..<(2*(n-i)) { answer += "*" }
        print(answer)
    }
}