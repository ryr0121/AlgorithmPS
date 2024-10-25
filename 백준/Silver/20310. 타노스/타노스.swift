let s = readLine()!.map{String($0)}
var zero_cnt = 0
var one_cnt = 0
for c in s {
    if c == "0" { zero_cnt += 1 }
    if c == "1" { one_cnt += 1 }
}
zero_cnt /= 2
one_cnt /= 2

var res = ""
var delete_one_cnt = 0
var add_zero_cnt = 0

for c in s {
    if c == "0" && add_zero_cnt < zero_cnt {                                     
        res += c
        add_zero_cnt += 1
    }
    if c == "1" {
        if delete_one_cnt < one_cnt { delete_one_cnt += 1 }
        else { res += c }        
    }
}
print(res)