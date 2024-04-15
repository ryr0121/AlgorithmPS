// 두 개의 자연수 N과 K가 주어졌을 때, N의 약수들 중 K번째로 작은 수를 출력하는 프로그램을 작성하시오.

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var answer: [Int] = []
for i in 1...n {
   if (n%i) == 0 { answer.append(i) }
}
print(answer[k-1])
