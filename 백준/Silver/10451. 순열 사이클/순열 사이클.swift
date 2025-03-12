let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    let sorted_arr = arr.sorted()

    var dict:[Int:[Int]] = [:]
    for num in sorted_arr {
        if(dict[num] == nil) { dict[num] = [arr[num-1]] } 
        else { dict[num]!.append(arr[num-1]) }
    }

    var cycle_cnt = 0
    var ch = Array(repeating: false, count: n+1) // 1-based
    var q:[Int] = []

    for i in 1...n {
        if(!ch[i]) {
            q.append(i)
            while(!q.isEmpty) {
                let cur = q.removeFirst()
                for num in dict[cur]! {
                    if(!ch[num]) {
                        q.append(num)
                        ch[num] = true
                    }
                }
            }
            cycle_cnt += 1
        }
    }

    print(cycle_cnt)
}