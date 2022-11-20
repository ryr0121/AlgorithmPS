# 1. N, 수식 입력 받기
# 2. 입력 받은 수식 쪼개서 트리로 만들기 --> 입력받은 수식의 첫 숫자 == root노드 /
# 3. 각 (깊이의) 마지막 노드의 값으로 계산 결과 추가
# 4. 각 깊이의 마지막 노드의 값 비교로 최댓값 도출
# DP 인가,,ㅠㅅㅠ

###
def permuteExp(exp):
    if exp[0] == '+':
        return int(exp[1])
    elif exp[0] == '-':
        return int(exp[1])*(-1)
    else:
        return int(exp)





# 1. N, 수식 입력 받기
N = int(input())
tempExp = list(map(str, input()))
# print(exp)

# 수식 리스트 정리
l = int(len(tempExp)/2)+1
exp = list()
exp.append(tempExp[0])
for i in range(1, len(tempExp),2):
    exp.append(tempExp[i] + tempExp[i+1])


# 2. 입력 받은 수식 쪼개서 트리로 만들기
# 노드, 트리 정의
class Node:
    def __init__(self, data):
        self.data = data
        self.left, self.right = None, None

class ExpTree:
    def __init__(self, root):
        self.root = root
        self.depth = 0

    def insert(self, data, currNode):
        self.depth += 1
        if currNode.left is None:
            currNode.left = Node(data)
        elif currNode.rightNode is None:
            currNode.rightNode = Node(data)

    def getDepth(self):
        return self.depth


# 노드 추가
root = Node(int(exp[0]))
ExpTree(root)

for i in range(1, len(exp)):

