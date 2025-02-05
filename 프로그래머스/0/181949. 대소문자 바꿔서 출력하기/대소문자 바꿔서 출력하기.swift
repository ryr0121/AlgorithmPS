import Foundation

let s1 = readLine()!.map{String($0)}
var answer = ""
for s in s1 {
    if(Character(s).isUppercase) { answer += s.lowercased() }
    else { answer += s.uppercased() }
}
print(answer)
