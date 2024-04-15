import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    let input = readLine()!.split(separator: "").map { String($0).lowercased() }
    let str = input.joined(separator: "")
    let reversed_str = input.reversed().joined(separator: "")
    print("#\(i) \(str==reversed_str ? "YES" : "NO")")
}
