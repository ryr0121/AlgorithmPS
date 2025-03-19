let n = Int(readLine()!)!

var minus:[Int] = [] // 음수
var plus:[Int] = [] // 양수
var zero:[Int] = [] // 0

for _ in 0..<n {
    let num = Int(readLine()!)!
    if(num < 0) { minus.append(num) }
    else if(num > 0) { plus.append(num) }
    else { zero.append(num) }
}

var answer = 0

// 음수는 음수끼리 곱하기 -> 두개를 더하는 것보다 곱한 값이 무조건 더 클 수밖에 없음
// 0은 음수가 홀수개인 경우엔 곱하는데 사용, 짝수개라면 그냥 더해주기
minus.sort(by: >) // 절댓값이 작은 순서로 정렬
while(!minus.isEmpty) {
    if(minus.count == 1) {
        if(zero.count == 0) { answer += minus.removeLast() }
        else {
            zero.removeLast() // 0 곱해서 +0 처리하고 break
            break
        }
    }
    if(minus.count > 1) { answer += minus.removeLast() * minus.removeLast() }
}

// 양수는 큰 값순으로 묶어서 곱하기 -> 곱한 값이 더한 값보다 작을 수 있음
plus.sort() // 절댓값이 작은 순서로 정렬
while(!plus.isEmpty) {
    if(plus.count == 1) { answer += plus.removeLast() }
    else {
        let a = plus.removeLast()
        let b = plus.removeLast()
        if(a*b > a+b) { answer += a*b }
        else {
            answer += a
            plus.append(b) // 원상복구(다른 숫자랑 비교하기 위해)
        }
    }
}

print(answer)