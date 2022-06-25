# logon
## Overview
100 points  
Web Exploitation
## Description
The factory is hiding things from all of its users. Can you login as Joe and find what they've been looking at? https://jupiter.challenges.picoctf.org/problem/44573/ (link) or http://jupiter.challenges.picoctf.org:44573
## Hints 
Hmm it doesn't seem to check anyone's password, except for Joe's?
## Approch 
Open the site. Look at source of page. When we try without credentials. It shows "No flag for you".Now we put our focus on cookies. We update the 'admin' cookie and got flag.
## Flag 
picoCTF{th3_c0nsp1r4cy_l1v3s_6f2c20e9}