import Foundation

var result:[[Int]] = []

func solution(_ n:Int) -> [[Int]] {
    hanoi(1,3,2,n)
    return result
}

func hanoi(_ src: Int, _ tgt: Int, _ inter: Int, _ n: Int) -> Void {
    if n == 1 { result.append([src, tgt]) } 
    else {
        hanoi(src,inter,tgt,n-1)
        hanoi(src,tgt,inter,1)
        hanoi(inter,tgt,src,n-1)
    }            
}
        