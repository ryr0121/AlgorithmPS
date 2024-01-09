import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    if (is_suffix.count > my_string.count) { return 0 }
    else { return is_suffix == my_string.map{String($0)}[(my_string.count - is_suffix.count)...(my_string.count-1)].joined(separator:"") ? 1 : 0 }
}