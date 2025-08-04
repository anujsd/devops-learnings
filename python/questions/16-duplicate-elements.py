my_list = [1, 2, 5, 6, 8, 9, 3, 4, 8, 9, 1, 8]

cnt = {}

for i in my_list:
    cnt[i] = cnt.get(i,0) + 1

duplicate = [i for i in cnt if cnt[i]>1]
print(duplicate)


# Method 2

seen = set()
duplicates = set()
for item in my_list:
    if item in seen:
        duplicates.add(item)
    else:
        seen.add(item)
print(f"The duplicate elements are: {list(duplicates)}")

# Method 3

duplicates = []
for i in range(len(my_list)):
    for j in range(i + 1, len(my_list)):
        if my_list[i] == my_list[j] and my_list[i] not in duplicates:
            duplicates.append(my_list[i])
print(f"The duplicate elements are: {duplicates}")
