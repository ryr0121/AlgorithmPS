func solution(_ n:Int) -> String {
    var result = "" 
    for i in 1...n { result += (i%2 == 1) ? "수" : "박" }
    return result   
}