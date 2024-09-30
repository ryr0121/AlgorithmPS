import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // friends : 친구들의 이름
    // gifts : 이번 달까지 친구들이 주고받은 선물 기록
    // 구해야 하는 것 : 다음 달에 가장 많은 선물을 받는 친구의 선물 개수
    
    // 1. 선물 주고 받은 기록 2차원 배열로 정의 (행 : 준 사람 / 열 : 받은 사람)
    var hist = Array(repeating: Array(repeating: 0, count: friends.count), count: friends.count)
    for gift in gifts {
        let names = gift.split(separator: " ").map{String($0)}
        let giver_idx = getIdxByName(names[0], friends) // 선물 준 사람의 idx
        let receiver_idx = getIdxByName(names[1], friends) // 선물 받은 사람의 idx
        hist[giver_idx][receiver_idx] += 1
    }
    
    // 2. 사람 별로 [준 선물 수, 받은 선물 수, 선물 지수] 값 기록 2차원 배열로 정의
    // 준 선물 수 : hist의 행의 합 / 받은 선물 수 : hist의 열의 합
    // 선물 지수란? 이번 달까지 (자신이 친구들에게 준 선물의 수) - (받은 선물의 수)
    var info = Array(repeating: Array(repeating: 0, count: 3), count: friends.count)
    let f_cnt = friends.count
    for i in 0..<f_cnt {
        info[i][0] = getSumOfGived(i, hist)
        info[i][1] = getSumOfReceived(i, hist)
        info[i][2] = info[i][0] - info[i][1]
    }
    
    // 3. 1에서 구한 2차원 배열을 보며, 아래의 세 단계에 따라 다음 달에 받을 선물의 최대값 구하기
    // * 두 사람이 선물을 주고받은 기록 O -> 두 사람 사이에 더 많은 선물을 준 사람이 다음 달에 선물 +1
    // * 두 사람이 선물을 주고받은 기록 X or == -> 선물 지수가 더 큰 사람이 선물 +1 (from 선물 지수가 더 작은 사람)
    // * ㄴ 선물 지수가 같은 경우 -> 선물 주고 받지 않음
    var answer = 0
    
    for i in 0..<f_cnt {
        let arr = hist[i]
        var gift_cnt = 0
        for j in 0..<f_cnt {
            if(i==j) { continue } // 자기 자신과의 비교는 건너뜀
            
            // (1) 두 사람이 선물을 주고받은 기록 X -> 선물 지수가 더 큰 사람이 선물 +1
            if(hist[i][j] == 0 && hist[j][i] == 0) {
                if (info[i][2] > info[j][2]) { gift_cnt += 1 }
            }
            
            // (2) 두 사람이 선물을 주고받은 기록 O -> 두 사람 사이에 더 많은 선물을 준 사람이 다음 달에 선물 +1
            else {
                // 준 선물 수가 더 큰 경우
                if (hist[i][j] > hist[j][i]) { gift_cnt += 1 }
                
                // 준 선물 수가 같은 경우
                else if (hist[i][j] == hist[j][i]) {
                    if (info[i][2] > info[j][2]) { gift_cnt += 1 }
                }
            } 
        }
        answer = (answer < gift_cnt) ? gift_cnt : answer
    }
    
    return answer
}

// friends 내에서 특정 이름의 index 구하기
func getIdxByName(_ name: String, _ names: [String]) -> Int {
    let cnt = names.count
    for i in 0..<cnt {
        if(names[i] == name) { return i }
    }
    return -1
}

// 준 선물 수의 총합 구하기
func getSumOfGived(_ f_idx: Int, _ history: [[Int]]) -> Int {
    var sum = 0
    for n in history[f_idx] { sum += n }
    return sum
}

// 받은 선물 수의 총합 구하기
func getSumOfReceived(_ f_idx: Int, _ history: [[Int]]) -> Int {
    var sum = 0
    let h_cnt = history.count
    for i in 0..<h_cnt { sum += history[i][f_idx] }
    return sum
}