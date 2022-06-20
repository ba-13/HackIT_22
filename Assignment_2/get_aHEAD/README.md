# GET aHEAD


## Overview

Points: 20
Category: Web Exploitation

## Description
Find the flag being held on this server to get ahead of the competition http://mercury.picoctf.net:21939/

## Hints
1) Maybe you have more than 2 choices
2) Check out tools like Burpsuite to modify your requests and look at the responses

## Approach
So the second hint advises the usage of Burpsuite, so I opened the Burpsuite Browser and opened the link on it. It also says to modify the request and try looking at the responses.

Adding on to this, the title says to get ahead so it probably is asking to try a HEAD request. 

Therefore a simple HEAD request gives the required flag


## Flag
flag: picoCTF{r3j3ct_th3_du4l1ty_6ef27873}
