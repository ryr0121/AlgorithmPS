var input = readLine()!.uppercased()
let arr = input.map{String($0)}
var dict:[String:Int] = [:]

for a in arr {
    if let _ = dict[a] { dict[a] = dict[a]! + 1 }
    else { dict[a] = 1 }
}

let s_dict = dict.sorted { $0.value > $1.value }
let max_v = s_dict[0].value
var cnt = 0
for d in s_dict {
    if d.value == max_v { cnt += 1 }
}
print(cnt > 1 ? "?" : s_dict[0].key)