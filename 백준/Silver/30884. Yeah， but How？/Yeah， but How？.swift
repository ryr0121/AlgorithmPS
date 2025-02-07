import Foundation

var input = readLine()!
input = input.replacingOccurrences(of: "()", with: "(1)")
input = input.replacingOccurrences(of: ")(", with: ")+(")
print(input)