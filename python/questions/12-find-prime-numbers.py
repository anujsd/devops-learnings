import math

# # Print all print till 10

n = 1000

for i in range(n):
    cnt = 0
    # print("start",end="  ")
    for j in range(2,int(i**0.5)+1):
        # print(i,j,end=" ")
        if i%j==0:
            cnt+=1
    # print("end ", end="   ")

    if cnt==0:
        print(i,end=" ")


#  Check number prime or not

# num = 1212121212
# cnt = 0
# for i in range(2, int(num**0.5)+1):
#     if num%i==0:
#         cnt+=1

# if cnt == 0:
#     print(f"\n{num} is prime number")
# else:
#     print(f"\n{num} is not prime number")
