import Foundation

let nums = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

func solution(_ numbers:String) -> Int64 {
    var num_str = numbers.map{String($0)}
    
    var result = ""
    var temp = ""
    for s in num_str {
        temp += s
        if nums.contains(temp) { result += getNum(temp); temp = ""; }
    }
    return Int64(result)!
}

func getNum(_ str: String) -> String {
    for i in 0..<10 { if nums[i] == str { return String(i) } }
    return ""
}