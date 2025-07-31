from collections import defaultdict

file_path="./file.log"

counts = defaultdict(int)
# with open(file_path) as f:
#     for line in f:
#         for word in line.strip().split():
#             counts[word] += 1

# print(counts["INFO"])

with open("./file.log") as f:
    for line in f:
        print(line)