import Foundation

let n = Int(readLine()!)!
let distances = readLine()!.split(separator: " ").map {Int(String($0))!}
let prices = readLine()!.split(separator: " ").map {Int(String($0))!}

var sum = 0
var min_prices = prices[0]
for i in 0..<n {
    if i > 0 { sum += min_prices * distances[i-1] }
    if prices[i] < min_prices { min_prices = prices[i] }
}
print(sum)