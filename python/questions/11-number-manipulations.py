# ####################################################
# 1 Print sum of n natural number
# ####################################################

# n = 19

# sum = (n*(n+1))/2

# print(sum)

# ####################################################
# 2 Print leap year or not
# ####################################################

# year = 2200

# if year % 4 == 0:
#     if year % 100 == 0 and year % 400 != 0:
#         print(f"{year} is not a leap year")
#     else:
#         print(f"{year} is a leap year")
# else:
#     print(f"{year} is not leap year")


# if year%400==0 or (year%4==0 and year%100!=0):
#     print(f"{year} is a leap year")
# else:
#     print(f"{year} is not leap year")


# ####################################################
# 3 reverse numbers
# ####################################################

# num1 = 37042
# num2 = 0
# while num1 > 0:
#     t = num1 % 10
#     num2 = num2*10 + t
#     num1 =  num1 // 10
#     print(num1, num2)

# print(num2)


# ####################################################
# 4 Factorial of number
# ####################################################

# n = 3
# ans = 1
# for i in range(1, n+1):
#     ans *= i
# print(ans)

# ####################################################
# 5 Print factors of number
# ####################################################

# num = 700
# for i in range(1,num+1):
#     if num%i==0:
#         print(i, end=" ")

# ####################################################
# 6 Pallindrome number
# ####################################################

# num = 101

# s1 = str(num)
# s2 = s1[::-1]

# if s1==s2:
#     print(f"{num} is pallindrome")
# else:
#     print(f"{num} is not pallindrome")

# print(type(s1))
# print(type(int(s1)))

# ####################################################
# 7 Check if number is perfect or not
# ####################################################

