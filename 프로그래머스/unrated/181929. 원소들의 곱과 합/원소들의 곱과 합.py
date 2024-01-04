def solution(num_list):
    temp1 = 1
    temp2 = 0
    
    for n in num_list:
        temp1 *= n
        
    for n in num_list:
        temp2 += n
    temp2 *= temp2
    
    return 1 if (temp1 < temp2) else 0