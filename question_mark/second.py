import requests as reqs
import re
import sys
import os
import base64
import getpass

# Answer is what line 24 prints when no line here is tampered and correct input is given
with open("solution.md", 'a') as f:
    _i = str(base64.b64encode(
        (getpass.getuser()+'___').encode('ascii')))[2:-1] + '\n'
    f.write(_i)
try:
    result1 = sys.argv[1]
except BaseException:
    print("You've to run this again as : ", end="")
    print(f"python3 {os.path.basename(__file__)} class_string")
    print("with the class string you found instead of 'class_string'")
    exit()
response = reqs.get("http://google.com")
x = re.search(
    r'<input class=\"(?P<val>.*)\"\s.*value="Google Search".*>', response.text)
result2 = x.group("val")[0:3]
result1_ = ""
for ch in result1:
    result1_ += chr(ord(ch)-1)
result = result1_ + result2

if base64.b64encode(result.encode('ascii')) == b'Zk1ONzhhbHN0':
    print(f"Gotcha! Here's your answer: {result}")
else:
    print("Retry please.")
