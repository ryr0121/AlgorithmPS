import Foundation

func solution(_ n:Int) -> Int 
{
    var N = n
    var ans = 0
    while(N > 0) {
        if(N%2 == 0) { N /= 2 }
        else {
            N -= 1
            ans += 1
        }
    }
    return ans
}