import json

with open("./file.json", "r") as file:
    data = json.load(file)

key_list = []

def print_keys(tmp, parent=""):
    if isinstance(tmp, dict):
        for key, val in tmp.items():
            full_key = f"{parent}.{key}" if parent else key
            key_list.append(full_key)
            print_keys(val, full_key)
    elif isinstance(tmp, list):
        for idx, val in enumerate(tmp):
            list_prefix = f"{parent}[{idx}]" if parent else f"[{idx}]"
            print_keys(val, list_prefix)

# Traverse the JSON and build the key list
print_keys(data)

# Clean keys by removing list indices like [0], [1]
cleaned_keys = []
for item in key_list:
    # Remove any [number] parts using split and filter
    parts = item.replace('[', '.[').split('.')  # split on dot, but isolate [0]
    parts = parts[2:]
    cleaned = ".".join(part for part in parts if not part.startswith('['))
    cleaned_keys.append(cleaned)

# Get unique keys
unique_keys = sorted(set(cleaned_keys))

# Print
print("Unique keys (without [0], etc.):")
for key in unique_keys:
    print(key)
