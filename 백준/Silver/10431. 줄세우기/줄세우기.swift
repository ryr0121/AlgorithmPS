let P = Int(readLine()!)!
for _ in 0..<P {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let t = input[0]
    var stud:[Int] = []
    for i in 1..<21 { stud.append(input[i]) }

    var res = 0
    for i in 1..<20 {
        for j in 0..<i {
            if stud[j] > stud[i] {
                var temp:[Int] = []
                for k in 0..<j { temp.append(stud[k]) }
                temp.append(stud[i])
                for k in j..<20 {
                    if (stud[k] == stud[i]) { continue }
                    temp.append(stud[k])
                }
                res += i-j
                stud = temp
            }
        }
    }
    print("\(t) \(res)")
}