import Foundation

while let input = readLine() {
    if input == "." { break }
    
    let line = input.map{String($0)}
    var stack:[String] = []
    var res = true
    for c in line {
        if (c == "(") || (c == "[") { stack.append(c) }
        else if (c == ")"){
            if !stack.isEmpty && stack[stack.count-1] == "(" { stack.removeLast() }
            else { res = false; break; }
        }
        else if (c == "]"){
            if !stack.isEmpty && stack[stack.count-1] == "[" { stack.removeLast() }
            else { res = false; break; }
        }
    }
    if (stack.count > 0) { res = false }
    print(res ? "yes" : "no")
}