import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}

if input[0] == 0 { print(0) }
else {
    let books = readLine()!.split(separator: " ").map{Int(String($0))!}

    var weight = input[1]
    var result = 1
    
    for b in books {
        if weight < b {
            weight = input[1]
            result += 1
        }
        weight -= b
    }
    print(result)
}