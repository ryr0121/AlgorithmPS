import Foundation

func solution(_ new_id:String) -> String {
    
    // 1단계 - 모두 소문자로 치환
    var after_1 = new_id
    after_1 = after_1.lowercased()

    // 2단계 - 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거
    var list = after_1.map{ String($0) }
    var after_2 : [String] = []
    for c in list {
        if ["-", "_", "."].contains(c) { after_2.append(c) }
        else {
            let v = Int(UnicodeScalar(c)!.value)
            if ((48...57) ~= v) || ((97...122) ~= v) { after_2.append(c) }
        }
    }
    
    // 3단계 - 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환
    var dot_cnt = 0
    var after_3 : [String] = []
    for c in after_2 {
        if (c == ".") {
            dot_cnt += 1
            if (dot_cnt > 1) { continue }
            else { after_3.append(c) }
        } else {
            after_3.append(c)
            dot_cnt = 0
        }
    }
    
    // 4단계 - 마침표(.)가 처음이나 끝에 위치한다면 제거
    var after_4 = ""
    for i in 0..<after_3.count {
        if (i == 0 || i == (after_3.count-1)) && (after_3[i] == ".") { continue }
        after_4 += after_3[i]
    }
    
    // 5단계 - 빈 문자열이라면, new_id에 "a"를 대입
    var after_5 = after_4
    if (after_5.length == 0) { after_5 = "a" }
    
    // 6단계 - 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거
    // 만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거
    var after_6 = after_5
    if (after_6.length > 15) { after_6 = String(after_5.prefix(15)) }
    if (after_6.suffix(1) == ".") { after_6 = String(after_6.prefix(after_6.length-1)) }
    
    // 7단계 - 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙임
    var after_7 = after_6
    if (after_7.length < 3) {
        while(after_7.length < 3) { after_7 += after_6.suffix(1) }
    }
    
    return after_7
}