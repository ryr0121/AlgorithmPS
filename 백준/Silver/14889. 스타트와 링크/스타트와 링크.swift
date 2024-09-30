import Foundation

let n = Int(readLine()!)!
var s:[[Int]] = []
for _ in 0..<n {
    s.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var start_team = Array(repeating: -1, count: n/2)
var min_diff = 10000

solution(0,0)
print(min_diff)

func solution(_ l: Int, _ st: Int) -> Void {
    if (l == n/2) {
        // start_team 값 기반으로 link_team 값 구하기
        var link_team:[Int] = []
        for i in 0..<n {
            var flag = true
            for start in start_team {
                if (i == start) { flag = false }
            }
            if flag { link_team.append(i) }
        }

        // 각 팀의 능력치 구하기
        var start_power = 0
        var link_power = 0

        for i in 0..<(n/2) {
            let a = start_team[i]
            for j in (i+1)..<(n/2) {
                let b = start_team[j]
                start_power += s[a][b] + s[b][a]
            }
        }

        for i in 0..<(n/2) {
            let a = link_team[i]
            for j in (i+1)..<(n/2) {
                let b = link_team[j]
                link_power += s[a][b] + s[b][a]
            }
        }

        // 팀의 능력치 차이 구하고, 차이 최솟값 갱신
        let diff = abs(start_power - link_power)
        if (min_diff > diff) { min_diff = diff }
        
    } else if (st < n) {
        for i in st..<n {
            start_team[l] = i
            solution(l+1, i+1)
        }
    }
}