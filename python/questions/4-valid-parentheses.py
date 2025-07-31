input= "([]){}"
output= True

st = []
tmp = False

for i in input:
    if i == '(' or i == '{' or i == '[':
        st.append(i)
    else:
        tp = st.pop()
        if (tp == ')' and i != '(') or (tp == ']' and i != '[') or (tp == '}' and i != '{'):
            print(False)
            tmp = True
            break


if tmp == False:
    if len(st) == 0:
        print(True)
    else:
        print(False)