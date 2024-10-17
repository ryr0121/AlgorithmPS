var N = Int(readLine()!)!
var winner = ""
outer: while N > 0 {
    for i in 0..<2 {
        if N >= 3 { N -= 3 }
        else { N -= 1 }

        if N == 0 {
            if i == 0 { winner = "SK" }
            else { winner = "CY" }
            break
        }
    }
}
print(winner)