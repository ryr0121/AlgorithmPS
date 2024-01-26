func solution(_ phone_number:String) -> String {
    var result = ""
    var num_arr:[String] = phone_number.map { String($0) }
    for i in 0..<num_arr.count {
        result += (num_arr.count-i > 4) ? "*" : num_arr[i]
    }
    return result
}