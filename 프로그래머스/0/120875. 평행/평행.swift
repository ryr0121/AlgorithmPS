func solution(_ dots:[[Int]]) -> Int {
    // y/x의 값이 같으면 평행
    var result = 0
    var inclinations:[Double] = []
    
    // 직선 2개간의 평행 비교 경우의 수
    // (0,1)과 (2,3)
    // (0,2)과 (1,3)
    // (0,3)과 (1,2)
    if (getInc(dots[0], dots[1]) == getInc(dots[2], dots[3])) {
        return 1
    } else if  (getInc(dots[0], dots[2]) == getInc(dots[1], dots[3])) {
        return 1
    } else if  (getInc(dots[0], dots[3]) == getInc(dots[1], dots[2])) {
        return 1
    } else {
        return 0
    }
}

func getInc(_ m:[Int], _ n: [Int]) -> Double {
    let diffX = max(m[0], n[0]) - min(m[0], n[0])
    let diffY = max(m[1], n[1]) - min(m[1], n[1])
    let inc = ((n[0]-m[0])*(n[1]-m[1]) < 0) ? -1.0 : 1.0
    return inc*(Double(diffY)/Double(diffX))
}