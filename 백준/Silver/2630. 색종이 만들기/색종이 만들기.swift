import Foundation

// 주어진 길이 n에 대해 절반씩 쪼개어 총 4등분하여 탐색
func solution(_ x: Int, _ y: Int, _ n: Int) {
    let color = maps[x][y]
    for p in x..<(x+n) {
        for q in y..<(y+n) {
            if color != maps[p][q] {
                solution(x, y, n/2)   // 좌측 상단 사각형
                solution(x, y+(n/2), n/2)   // 좌측 하단 사각형
                solution(x+(n/2), y, n/2)   // 우측 상단 사각형
                solution(x+(n/2), y+(n/2), n/2)   // 우측 하단 사각형
                return
            }
        }
    }

    if color == 0 { result.append(0) }
    else { result.append(1) }
}


let n = Int(readLine()!)!
var maps:[[Int]] = []
var result:[Int] = []

for _ in 0..<n {
    let arr = readLine()!.components(separatedBy:" ").map{ Int(String($0))! }
    maps.append(arr)
}

solution(0,0,n)


var result_white = 0
var result_blue = 0

for r in result {
    if r == 0 { result_white += 1 }
    else if r == 1 { result_blue += 1 }
}

print(result_white)
print(result_blue)