func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    var asc_arr:[Int] = s.map { Int(UnicodeScalar(String($0))!.value) }
    for a in asc_arr { 
        if (a == Int(UnicodeScalar(" ").value)) { result += " " }
        else {     
            var asc = a+n
            if (a >= 65 && a <= 90) {
                if (a+n > 90) { asc -= 26 }
            } else {
                if (a+n > 122) { asc -= 26 }
            }
            result += String(UnicodeScalar(asc)!) 
        }
    }
    return result
}