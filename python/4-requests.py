import requests
from requests.auth import HTTPBasicAuth
import time

st = time.time()
res = requests.get("https://www.google.com",allow_redirects=True,auth=HTTPBasicAuth("username","password"))
ed = time.time()
print(ed-st)

print(res.status_code)