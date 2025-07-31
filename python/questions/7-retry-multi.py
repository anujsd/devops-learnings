import time
import requests

def fetch_url(url):
    for i in range(3):
        try:
            res = requests.get(url)
            if res.ok:
                return res.text
        except requests.RequestException:
            time.sleep(2 ** i)
    raise Exception("Failed after retries")

txt = fetch_url("https://google.com")
print(txt)