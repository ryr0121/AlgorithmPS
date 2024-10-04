import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var score = [
        [0,0], // R, T
        [0,0], // C, F
        [0,0], // J, M
        [0,0], // A, N
    ]
    
    let n = survey.count
    for i in 0..<n {
        // [score의 idx, idx번째 요소 내 순서, 누적값]
        let v = getResult(survey[i], choices[i])
        score[v[0]][v[1]] += v[2]
        
    }
    print(score)
    
    var answer = ""
    for i in 0..<score.count {
        answer += getCategory(i, score[i])
    }
    
    return answer
}

func getResult(_ j: String, _ c: Int) -> [Int] {
    // j(지표)값과 c(선택)값을 인자로 전달
    // 반환값 -> [score의 idx, idx번째 요소 내 순서, 누적값]
    var res = [0, 0, abs(c-4)]
    var isReversed = false
    switch(j) {
        case "RT","TR": res[0] = 0
        case "CF","FC": res[0] = 1
        case "JM","MJ": res[0] = 2
        case "AN","NA": res[0] = 3
        default: res = [0,0,0]
    }
    switch(j) {
        case "TR","FC","MJ","NA": isReversed = true
        default: isReversed = false
    }
    if (isReversed) { 
        if ((c-4) < 0) { res[1] = 1 }
        else { res[1] = 0 }
    }
    else {
        if ((c-4) < 0) { res[1] = 0 }
        else { res[1] = 1 }
    }
    
    return res
}

func getCategory(_ idx: Int, _ v: [Int]) -> String {
    var c:[String] = []
    switch (idx) {
        case 0: c = ["R", "T"]
        case 1: c = ["C", "F"]
        case 2: c = ["J", "M"]
        case 3: c = ["A", "N"]
        default: c = ["", ""]
    }
    if (v[0] > v[1]) { return c[0] }
    else if (v[0] < v[1]) { return c[1] }
    else { return (c[0] > c[1]) ? c[1] : c[0] }
}