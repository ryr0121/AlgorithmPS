def solution(num_list):
    temp1 = 1
    temp2 = sum(num_list) * sum(num_list)
    
    for n in num_list:
        temp1 *= n
    
    return 1 if (temp1 < temp2) else 0