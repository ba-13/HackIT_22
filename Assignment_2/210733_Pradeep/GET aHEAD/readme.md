# GET aHEAD
## Overview
> Points: 20  
Category: Web Exploitation
## Description
> Find the flag being held on this server to get ahead of the competition http://mercury.picoctf.net:47967/
## Hints
> Maybe you have more than 2 choices  
Check out tools like Burpsuite to modify your requests and look at the responses
## Approach
> Hint 2 points out towards modifying the requests. And after this, clearly from the title, it wants a head request. Performing the same on the Burpsuite give the required flag.
## Flag
> `picoCTF{r3j3ct_th3_du4l1ty_6ef27873}`