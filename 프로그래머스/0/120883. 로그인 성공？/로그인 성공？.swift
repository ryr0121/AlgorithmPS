import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var id_check = false
    var pw_check = false
    
    for data in db {
        if data[0] == id_pw[0] && data[1] == id_pw[1] { 
            id_check = true
            pw_check = true
            break
        } else if data[0] == id_pw[0] && data[1] != id_pw[1] {
            id_check = true
            pw_check = false
        } 
    }
    
    var result = ""
    if id_check && pw_check { result = "login" }
    else if id_check && !pw_check { result = "wrong pw" }
    else { result = "fail" }

    return result
}