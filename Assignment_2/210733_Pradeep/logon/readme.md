# logon
## Overview
> Points: 100  
Category: Web Exploitation
## Description
> The factory is hiding things from all of its users. Can you login as Joe and find what they've been looking at? https://jupiter.challenges.picoctf.org/problem/44573/ (link) or http://jupiter.challenges.picoctf.org:44573
## Hints
> Hmm it doesn't seem to check anyone's password, except for Joe's?
## Approach
> Just opened the page source, found nothing useful there.  
Entered some dummy username and password and then opened Cookies from Applications and changed the value of 'admin' from 'False' to 'True'. After reloading the webpage, the required flag was there.
![Screenshot](./Screenshot%20(23).png)
## Flag
> `picoCTF{th3_c0nsp1r4cy_l1v3s_0c98aacc}`