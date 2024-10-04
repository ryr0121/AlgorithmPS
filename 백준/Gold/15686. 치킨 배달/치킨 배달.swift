import Foundation

var nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr:[[Int]] = []
for _ in 0..<nm[0] {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

// 치킨집(2)과 가정집(1)의 위치 정보 저장
var chicken:[[Int]] = []
var home:[[Int]] = []
for i in 0..<nm[0] {
    for j in 0..<nm[0] {
        if (arr[i][j] == 1) { home.append([i,j]) }
        else if (arr[i][j] == 2) { chicken.append([i,j]) }
    }
}

// 최소 거리 구하기
var comb = Array(repeating: 0, count: nm[1]) // 조합으로 선택된 치킨집의 인덱스
var answer = 10000
solution(0,0)
print(answer)

// 치킨집 M개를 뽑는 조합 구하기 -> 구해진 조합의 치킨집 배달거리가 최소인지 판별
func solution(_ l: Int, _ s: Int) -> Void {
    if (l == nm[1]) {
        var dist_sum = 0
        for h in home {
            var min_dist = 10000
            for c in comb {
                let dist = abs(chicken[c][0]-h[0]) + abs(chicken[c][1]-h[1])
                min_dist = (min_dist > dist) ? dist : min_dist
            }
            dist_sum += min_dist
        }
        answer = (answer > dist_sum) ? dist_sum : answer
    } else {
        for i in s..<chicken.count {
            comb[l] = i
            solution(l+1, i+1)
        }
    }
}