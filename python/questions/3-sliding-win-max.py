nums = [1,3,-1,-3,5,3,6,7]
k = 3

output = [3,3,5,5,6,7]


result = []
for i in range(len(nums) - k + 1):
    result.append(max(nums[i:i+k]))
    
print(result)