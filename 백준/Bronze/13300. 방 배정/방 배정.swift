import Foundation

let nk = readLine()!.split(separator: " ").map{Int(String($0))!}

// i+1학년 -> [여학생 수, 남학생 수]
var info = Array(repeating: Array(repeating: 0, count: 2), count: 6)
for _ in 0..<nk[0] {
    let stud = readLine()!.split(separator: " ").map{Int(String($0))!}
    if (stud[0] == 0) { info[stud[1]-1][0] += 1 } 
    else { info[stud[1]-1][1] += 1 }
}

var cnt = 0
for i in info {
    cnt += i[0]/nk[1]
    if (i[0]%nk[1] > 0) { cnt += 1 }
    
    cnt += i[1]/nk[1]
    if (i[1]%nk[1] > 0) { cnt += 1 }
}
print(cnt)