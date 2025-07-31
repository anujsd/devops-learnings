input = "  the sky   is blue "
uutput = "blue is sky the"


t = ' '.join(input.strip().split()[::-1])
print(t)