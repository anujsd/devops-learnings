input = "leetcode"
output = 0


mp = {}
for i in input:
    if i in mp:
        mp[i]+=1
    else:
        mp[i]=1

for idx, i in enumerate(input):
    if mp[i] == 1:
        print(idx)
        break
