# #  Swap without variables

# a=5
# b=11

# print(a,b)

# a,b=b,a

# # print(a,b)

# a=a+b
# b=a-b
# a=a-b
# print(a,b)

##################################
# print fibonacci
# 0, 1, 1, 2, 3, 5, 8

def fibo(i):
    if i==0:
        return 0
    if i==1:
        return 1
    return fibo(i-1)+fibo(i-2)

num=7
print(fibo(num+1))

#####################################
