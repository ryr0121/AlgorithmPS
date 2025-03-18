let input = readLine()!.map{String($0)}
var counts:[Int] = [] // X의 개수는 양수, .의 개수는 음수로 표현

var x_cnt = 0
var dot_cnt = 0
for i in 0..<input.count {
    if(input[i] == "X") {
        if(dot_cnt > 0) {
            counts.append(dot_cnt*(-1))
            dot_cnt = 0
        }
        x_cnt += 1
    } else {
        if(x_cnt > 0) {
            counts.append(x_cnt)
            x_cnt = 0
        }
        dot_cnt += 1
    }
}
if(x_cnt > 0) { counts.append(x_cnt) }
if(dot_cnt > 0) { counts.append(dot_cnt*(-1)) }

var answer = ""
outer: for i in 0..<counts.count {
    if(counts[i] > 0) {
        var count = counts[i]
        while(count > 0) {
            if(count == 1) {
                answer = "-1"
                break outer
            }
            if(count >= 4) {
                answer += "AAAA"
                count -= 4
            } else if(count >= 2) {
                answer += "BB"
                count -= 2
            }
        }
    } else {
        for _ in 0..<counts[i]*(-1) { answer += "." }
    }
}
print(answer)