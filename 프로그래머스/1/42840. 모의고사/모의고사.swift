import Foundation

func solution(_ answers:[Int]) -> [Int] {    
    var point_arr = [
        checkStu1(answers),
        checkStu2(answers),
        checkStu3(answers),
    ]    
    
    var result:[Int] = []
    for i in 0..<point_arr.count {
        if (point_arr[i] == getMaxPoint(point_arr)) {
            result.append(i+1)
        }
    }
    return result
}

func checkStu1(_ answers:[Int]) -> Int {
    let stu = [1, 2, 3, 4, 5]    
    var result = 0
    for i in 0..<answers.count {
        result += (answers[i] == stu[i%5]) ? 1 : 0
    }
    return result
}

func checkStu2(_ answers:[Int]) -> Int {
    let stu = [2, 1, 2, 3, 2, 4, 2, 5]    
    var result = 0
    for i in 0..<answers.count {
        result += (answers[i] == stu[i%8]) ? 1 : 0
    }
    return result
}


func checkStu3(_ answers:[Int]) -> Int {
    let stu = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]    
    var result = 0
    for i in 0..<answers.count {
        result += (answers[i] == stu[i%10]) ? 1 : 0
    }
    return result
}

func getMaxPoint(_ point_arr:[Int]) -> Int {
    var max = 0
    for p in point_arr {
        if max < p { max = p }
    }
    return max
}