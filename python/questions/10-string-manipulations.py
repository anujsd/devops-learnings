import collections

# #######################################################################
# 1. Reverse string
# #######################################################################

# str = "Anuj"

# print(len(str))

# print(str[::-1])

# #######################################################################
# 2. Check two strings are anagrams or not
# #######################################################################

# s1 = "Asda"
# s2 = "asda"

# s1 = s1.lower()
# s2 = s2.lower()

# if len(s1)!=len(s2):
#     print("Two strings are not anagrams")

# if collections.Counter(s1)==collections.Counter(s2):
#     print("Two strings are anagrams")
# else:
#     print("Two strings are not anagrams")

# Method 2

# if sorted(s1)==sorted(s2):
#     print("Two strings are anagrams")
# else:
#     print("Two strings are not anagrams")

# Method 3

# cnt = [0]*26
# ana = True

# for i in range(len(s1)):
#     cnt[ord(s1[i])-ord('a')]+=1
#     cnt[ord(s2[i])-ord('a')]-=1

# for i in range(len(cnt)):
#     if cnt[i] != 0:
#         print("Two strings are not anagrams")
#         ana=False
#         break

# if(ana==True):
#     print("Two strings are anagrams")


# #######################################################################
# 3. Check Occurance of charater in string
# #######################################################################

# str = "abascadsc"

# print(str.count("a"))

# # Method 2
# dict = collections.Counter(str)
# print(dict["a"])

# # Method 3
# ch = "a"
# cnt = 0
# for i in str:
#     if i==ch:
#         cnt+=1
# print(cnt)

