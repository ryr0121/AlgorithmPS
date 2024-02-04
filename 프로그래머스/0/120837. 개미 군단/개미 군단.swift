import Foundation

func solution(_ hp:Int) -> Int {
    var c_hp = hp
    var result = 0
    result += c_hp / 5
    c_hp %= 5
    result += c_hp / 3
    c_hp %= 3
    result += c_hp
    return result
}