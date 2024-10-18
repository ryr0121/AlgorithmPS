let N = Int(readLine()!)!
var board:[[String]] = []
for _ in 0..<N { board.append(readLine()!.map{String($0)}) }

var heart = [-1,-1]
var leg_row = -1

var left_arm = 0
var right_arm = 0
var waist_len = 0
var left_leg = 0
var right_leg = 0

// 심장의 위치 + 다리 시작의 위치치
for i in 0..<N {
    var star_cnt = 0
    for j in 0..<N {
        if board[i][j] == "*" { star_cnt += 1 }
    }
    if star_cnt > 2 {
        var tmp = 0
        for j in 0..<N {
            if board[i][j] == "*" { tmp += 1 }
            if board[i-1][j] == "*" { heart = [i,j]; break; }
        }
        left_arm = tmp-1
        right_arm = star_cnt-1-left_arm
    }
    if leg_row == -1 && star_cnt == 2 { leg_row = i }
}

// 허리의 길이
for _ in (heart[0]+1)..<leg_row { waist_len += 1 }

// 다리의 길이
for i in leg_row..<N {
    for j in 0..<N {
        if board[i][j] == "*" {
            if j < heart[1] { left_leg += 1 }
            else { right_leg += 1 }
        }
    }
}


print("\(heart[0]+1) \(heart[1]+1)")
print("\(left_arm) \(right_arm) \(waist_len) \(left_leg) \(right_leg)")