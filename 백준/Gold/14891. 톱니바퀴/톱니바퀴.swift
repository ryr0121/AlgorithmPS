import Foundation

var status:[[String]] = []
for _ in 0..<4 {
    status.append(readLine()!.map{String($0)})
}
let n = Int(readLine()!)!

for _ in 0..<n {
    // n은 회전시킬 톱니바퀴의 번호(1~4)
    // d는 회전 방향(1:시계, -1:반시계)
    var nd = readLine()!.split(separator: " ").map{Int(String($0))!}
    nd[0] -= 1 // 인덱스 기준으로 값 변경

    var rotate_dir = Array(repeating: 0, count: 4) // 0~3번째 바퀴의 회전 여부(0:회전X / 1:시계 / -1:반시계)
    rotate_dir[nd[0]] = nd[1]

    if (nd[0] == 0) {
        // 0번 바퀴를 회전하는 경우 -> 1번 고려
        // 0번째 톱니바퀴 - 2번째 바퀴가 1번과 연결
        rotate_dir[1] = (status[0][2] == status[1][6]) 
                        ? 0 : rotate_dir[0]*(-1)
        rotate_dir[2] = (status[1][2] == status[2][6]) 
                        ? 0 : rotate_dir[1]*(-1)
        rotate_dir[3] = (status[2][2] == status[3][6]) 
                        ? 0 : rotate_dir[2]*(-1)

    } else if (nd[0] == 1) {
        // 1번 바퀴를 회전하는 경우 -> 0,2번 고려
        // 1번째 톱니바퀴 - 2번째 바퀴가 2번과 연결 & 6번째 바퀴가 0번째 바퀴와 연결
        rotate_dir[0] = (status[0][2] == status[1][6]) 
                        ? 0 : rotate_dir[1]*(-1)
        rotate_dir[2] = (status[1][2] == status[2][6]) 
                        ? 0 : rotate_dir[1]*(-1)
        rotate_dir[3] = (status[2][2] == status[3][6]) 
                        ? 0 : rotate_dir[2]*(-1)
        
    } else if (nd[0] == 2) {
        // 2번 바퀴를 회전하는 경우 -> 1,3번 고려
        // 2번째 톱니바퀴 - 2번째 바퀴가 3번과 연결 & 6번째 바퀴가 1번째 바퀴와 연결
        rotate_dir[1] = (status[1][2] == status[2][6]) 
                        ? 0 : rotate_dir[2]*(-1)
        rotate_dir[3] = (status[2][2] == status[3][6]) 
                        ? 0 : rotate_dir[2]*(-1)
        rotate_dir[0] = (status[0][2] == status[1][6]) 
                        ? 0 : rotate_dir[1]*(-1)
        
    } else if (nd[0] == 3) {
        // 3번 바퀴를 회전하는 경우 -> 2번 고려
        // 3번째 톱니바퀴 - 6번째 바퀴가 2번과 연결
        rotate_dir[2] = (status[2][2] == status[3][6]) 
                        ? 0 : rotate_dir[3]*(-1)
        rotate_dir[1] = (status[1][2] == status[2][6]) 
                        ? 0 : rotate_dir[2]*(-1)
        rotate_dir[0] = (status[0][2] == status[1][6]) 
                        ? 0 : rotate_dir[1]*(-1)
        
    }
    
    for i in 0..<4 { rotate(i, rotate_dir[i]) }
}

// 점수 계산
var answer = 0
answer += (status[0][0] == "0") ? 0 : 1
answer += (status[1][0] == "0") ? 0 : 2
answer += (status[2][0] == "0") ? 0 : 4
answer += (status[3][0] == "0") ? 0 : 8
print(answer)

func rotate(_ idx: Int, _ dir: Int) -> Void {
    // status 내 idx 행의 바퀴값을 dir 방향(1:시계, -1:반시계)으로 회전
    if (dir == 1) {
        // 시계 방향 회전 -> 맨 뒤의 값을 맨 앞으로
        let last = status[idx].removeLast()
        status[idx].insert(last, at: 0)

    } else if (dir == -1) {
        // 반시계 방향 회전 -> 맨 앞의 값을 맨 뒤로
        let first = status[idx].removeFirst()
        status[idx].append(first)
    }
}