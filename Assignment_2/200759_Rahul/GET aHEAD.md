# GET aHEAD
## Overview
Points : 20  
Catogory : Web Exploitation
## Description
Find the flag being held on this server to get ahead of the competition http://mercury.picoctf.net:45028/
## Hints 
1. Maybe you have more than 2 choices
2. Check out tools like Burpsuite to modify your requests and look at the responses
## Approch 
Red was "GET" and for Blue was "POST". Look back at the challenge title "Get aHead", the word Head stands out, probably referring to the HTTP Request method "HEAD".
## Flag 
picoCTF{r3j3ct_th3_du4l1ty_775f2530}