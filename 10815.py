# 문제풀이 흐름 정리
# 첫 번째 입력 -> N : 상근이가 가진 카드 개수
# 두 번째 입력 -> [] : N개 만큼의 카드에 적힌 각각의 숫자
# 세 번째 입력 -> M : 다음으로 입력받을 숫자카드 개수 (상근이가 가진 건지 비교해야 하는 숫자카드 개수)
# 네 번째 입력 -> [] : 숫자카드 배열인데 이제 상근이가 가진 카드인지 비교해야 하는,,
# 비교를 위해 입력받은 카드 배열을 돌면서, 상근이가 가진 카드면 1을, 아니면 0을 출력

# <완전탐색> M만큼 돌면서 그 안에서 또 N만큼 돌며 상근이가 가진건지 확인하는 2중 for문 사용?
#   => 시간 복잡도 = M*N = (최대) 500,000^2 = 약 250억,,? 2초는 어림도 없을 듯;ㅜ

# numCardsForCompare 배열을 돌면서 이진탐색으로 numCards에 포함된 카드인지 판별
# M의 최댓값 * (numCards의 이진탐색 복잡도) = 500,000 * log(5*10^5) = 2,500,000*log5 = 약 1,747,425

import sys

def binary_search(array, target, start, end):
    while start <= end:
        mid = (start + end) // 2

        if array[mid] == target:
            return mid
        elif array[mid] > target:
            end = mid - 1
        else:
            start = mid + 1
    return None

n = int(input())
sangCard = list(map(int, sys.stdin.readline().split()))
m = int(input())
checkCard = list(map(int, sys.stdin.readline().split()))

sangCard.sort()
for i in range(m):
    if binary_search(sangCard, checkCard[i], 0, n - 1) is not None:
        print(1, end=' ')
    else:
        print(0, end=' ')