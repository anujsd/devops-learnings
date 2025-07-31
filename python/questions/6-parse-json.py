import json

with open("./parse.json") as f:
    data = json.load(f)

# print just keys

key_list = []


def print_keys(tmp):
    if isinstance(tmp, dict):
        for key, val in tmp.items():
            key_list.append(key)
            print_keys(val)
    elif isinstance(tmp, list):
        for idx, val in enumerate(tmp):
            print_keys(val)



print_keys(data)
print(set(key_list))