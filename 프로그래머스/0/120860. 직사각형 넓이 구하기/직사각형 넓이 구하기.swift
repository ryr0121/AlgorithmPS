import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var width = 0
    var height = 0
    
    var dots_arr = dots.sorted { $0[0] < $1[0] }
    height = abs(dots_arr[0][1]-dots_arr[1][1])
    width = abs(dots_arr[0][0]-dots_arr[2][0])
    
    return width*height
}