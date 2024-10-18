while let input = readLine() {
    if input == "end" { break }
    let arr = input.map{String($0)}

    let gather = ["a", "e", "i", "o", "u"]
    // 1. 모음(a,e,i,o,u) 하나를 반드시 포함
    var step1 = false
    for e in gather {
        if arr.contains(e) { step1 = true; break; }
    }

    // 2. 모음이 3개 혹은 자음이 3개 연속으로 오면 안 됨
    var step2 = true
    if arr.count > 2 {
        for i in 0..<arr.count-2 {
            if gather.contains(arr[i]) 
                && gather.contains(arr[i+1]) 
                && gather.contains(arr[i+2]) { step2 = false; break; }
            
            else if !gather.contains(arr[i]) 
                    && !gather.contains(arr[i+1]) 
                    && !gather.contains(arr[i+2]) { step2 = false; break; }
        }
    }

    // 3. 같은 글자가 연속적으로 두번 오면 안되나, ee 와 oo는 허용
    var step3 = true
    if arr.count > 1 {
        for i in 0..<arr.count-1 {
            if arr[i] == arr[i+1] 
                && arr[i] != "e" 
                && arr[i] != "o" { step3 = false; break; }
        }
    }

    print("<\(input)> is \(step1 && step2 && step3 ? "acceptable" : "not acceptable").")
}