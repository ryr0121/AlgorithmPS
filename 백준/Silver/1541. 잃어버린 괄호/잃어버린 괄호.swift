let input = readLine()!.map{String($0)}
var arr:[String] = []

var tmp = ""
for c in input {
    if(c == "-" || c == "+") {
        arr.append(tmp)
        arr.append(c)
        tmp = ""
    } else { tmp += c }
}
if(!tmp.isEmpty) { arr.append(tmp) }

var num = 0
var i = 0
while(i < arr.count) {
    if(arr[i] != "+") {
        i += 1
        continue
    }
    arr[i-1] = String(Int(arr[i-1])! + Int(arr[i+1])!)
    arr.remove(at: i)
    arr.remove(at: i)
}

if(arr.count > 1) {
    var i = 0
    while(i < arr.count) {
        if(arr[i] != "-") {
            i += 1
            continue
        }
        arr[i-1] = String(Int(arr[i-1])! - Int(arr[i+1])!)
        arr.remove(at: i)
        arr.remove(at: i)
    }
}
print(arr[0])