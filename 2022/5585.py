price = int(input())
change = 1000 - price

coin_type = [500,100,50,10,5,1]
n = 0   # 잔돈으로 제공되는 화폐 개수

for coin in coin_type:
    if change > 0:
        n += int(change/coin)
        change = int(change % coin)
        # print("현재까지의 화폐 개수 : " + str(n))
        # print("남은 잔돈 : " + str(change) + "원")
print(n)

