import Foundation

func solution(_ s:String) -> Int {
    var answer : String = "";
    var s_list = s.map{ String($0) }
    var word = ""
    
    for c in s_list {
        let v = Int(UnicodeScalar(c)!.value)
        if (48...57) ~= v {  answer += "\(c)" }
        else { 
            word += c 
            if (word.length > 0) {
                let converted = convert(word)
                if (converted != -1) {
                    answer += "\(convert(word))"
                    word = ""
                }
            }
        }
    }
    if (word.length > 0) {
        let converted = convert(word)
        if (converted != -1) {
            answer += "\(convert(word))"
            word = ""
        }
    }
    
    return Int(answer)!
}

func convert(_ word: String) -> Int {
    let num_of_word = [
        "zero":0,
        "one":1,
        "two":2,
        "three":3,
        "four":4,
        "five":5,
        "six":6,
        "seven":7,
        "eight":8,
        "nine":9,
    ]
    for key in num_of_word.keys {
        if (word == key) { return num_of_word[key]! }
    }
    return -1
}