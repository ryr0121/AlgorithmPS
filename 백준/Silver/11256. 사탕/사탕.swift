import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    var candy_num = input[0]
    var boxes:[Int] = []
    
    for _ in 0..<input[1] {
        let temp = readLine()!.split(separator: " ").map {Int(String($0))!}
        boxes.append(temp[0] * temp[1])
    }
    boxes.sort(by: >)

    var result = 0
    for b in boxes {
        if candy_num <= 0 { break }
        result += 1
        candy_num -= b
    }
    print(result)
}