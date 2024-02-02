import Foundation

// 입력받기
var n = Int(readLine()!)!
var info_arr:[[String]] = []
for _ in 0..<n {
    info_arr.append(readLine()!.split(separator: " ").map {String($0)})
}

// 나이순 정렬
var sorted_info = info_arr.sorted() { Int($0[0])! < Int($1[0])! }

// 출력
for i in sorted_info { print("\(i[0]) \(i[1])") }