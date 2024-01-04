def solution(str1, str2):
    # answer = 0
    # for i in range(0,(str2.count-str1.count + 1)):
    #     temp = ''
    #     for q in range(0,str1.count):
    #         temp += str2[i+q]
    #     if (temp == str1):
    #         answer = 1
    # return answer
    return 1 if (str1 in str2) else 0