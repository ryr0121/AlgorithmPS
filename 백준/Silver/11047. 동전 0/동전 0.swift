import Foundation

var input = readLine()!.split(separator: " ").map {Int(String($0))!}

var coins: [Int] = []
for _ in 0..<input[0] { coins.append(Int(readLine()!)!) }
coins.sort(by: >)

var result = 0
for c in coins {
    if input[1]/c > 0 {
        result += input[1]/c
        input[1] %= c
    }
}
print(result)