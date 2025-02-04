let input = readLine()!.map{Int(String($0))!}
var cur = 0
var idx = 0

outer: while(true) {
    cur += 1
    let list = String(cur).map{Int(String($0))!}
    for s in list {
        if(input[idx] == s) { 
            idx += 1
            if(idx >= input.count) {
                print(cur)
                break outer
            }
        }
    }
}