import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
print(Double(input[0])/Double(input[1]))