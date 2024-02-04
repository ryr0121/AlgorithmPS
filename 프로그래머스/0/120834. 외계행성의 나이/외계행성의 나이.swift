import Foundation

func solution(_ age:Int) -> String {
    var age_alph = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    var age_str = String(age).map{String($0)}
    var converted_age = ""
    for s in age_str { converted_age += age_alph[Int(s)!] }    
    return converted_age
}