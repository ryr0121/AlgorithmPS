import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var min_x = 100
    var min_y = 100
    
    var max_x = -1
    var max_y = -1
    
    for i in 0..<wallpaper.count {
        let list = wallpaper[i].map{String($0)}
        for j in 0..<list.count {
            if(list[j] == "#") {
                if(i < min_x) { min_x = i }
                if(i > max_x) { max_x = i }
                
                if(j < min_y) { min_y = j }
                if(j > max_y) { max_y = j }
            }
        }
    }
    return [min_x, min_y, max_x+1, max_y+1]
}