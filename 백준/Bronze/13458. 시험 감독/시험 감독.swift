import Foundation

let n = Int(readLine()!)!
var stud = readLine()!.split(separator: " ").map{Int(String($0))!} // 각 방의 응시자 수
var teac = readLine()!.split(separator: " ").map{Int(String($0))!} // 총감독관, 부감독관의 각 감독 가능 인원 수

var answer = n
for i in 0..<n {
    stud[i] -= teac[0]
    answer += (stud[i]/teac[1] > 0) ? stud[i]/teac[1] : 0
    stud[i] %= teac[1]
    if (stud[i] > 0) { answer += 1 }
}
print(answer)