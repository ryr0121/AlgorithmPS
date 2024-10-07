import Foundation

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map{String($0)}
    var answer = 0 // 등(1)의 개수
    for i in input {
        if (i == "1") { answer += 1 }
    }
    
    if (answer == 0) { print("D") } // 윷
    else if (answer == 1) { print("C") } // 걸
    else if (answer == 2) { print("B") } // 개
    else if (answer == 3) { print("A") } // 도
    else if (answer == 4) { print("E") } // 모
}