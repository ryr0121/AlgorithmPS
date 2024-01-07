import Foundation

func solution(_ message:String) -> Int {
    var strList = message.map { String($0) }
    return 2*(strList.count)
}