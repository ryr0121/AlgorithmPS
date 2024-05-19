import Foundation

/// 전위순회
func DFS1(_ v: Int) -> Void {
    if v > 7 { return }
    else {
        arr1.append(String(v))
        DFS1(v*2)
        DFS1(v*2+1)
    }
}
///. 중위순회
func DFS2(_ v: Int) -> Void {
    if v > 7 { return }
    else {
        DFS2(v*2)
        arr2.append(String(v))
        DFS2(v*2+1)
    }
}
///. 후위순회
func DFS3(_ v: Int) -> Void {
    if v > 7 { return }
    else {
        DFS3(v*2)
        DFS3(v*2+1)
        arr3.append(String(v))
    }
}

var arr1:[String] = []
var arr2:[String] = []
var arr3:[String] = []

DFS1(1)
DFS2(1)
DFS3(1)

print("전위순회 출력 : ", arr1.joined(separator:" "))
print("중위순회 출력 : ", arr2.joined(separator:" "))
print("후위순회 출력 : ", arr3.joined(separator:" "))
