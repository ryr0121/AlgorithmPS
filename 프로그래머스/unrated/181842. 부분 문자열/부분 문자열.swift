import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    // var result = 0
    // var str2List = str2.map { return String($0) }
    // for i in 0..<(str2.count-str1.count + 1) {
    //     var temp = ""
    //     for q in 0..<str1.count { temp += str2List[i+q] }
    //     if (temp == str1) { result = 1; break; }
    // }
    // return result
    return str2.contains(str1) ? 1 : 0
}