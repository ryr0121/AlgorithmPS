import Foundation

func solution(_ s:String) -> Int{
    var stack:[String] = []
    var len = 0
    let list = s.map{String($0)}
    for i in 0..<list.count {
        if(stack.isEmpty) { 
            stack.append(list[i])
            len += 1
        }
        else {
            if(stack[len-1] == list[i]) { 
                stack.removeLast()
                len -= 1
            }
            else { 
                stack.append(list[i])
                len += 1
            }
        }
    }
    return stack.isEmpty ? 1 : 0
}