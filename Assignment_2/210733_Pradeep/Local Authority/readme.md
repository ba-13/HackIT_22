# Local Authority
## Overview
> Points: 100  
Category: Web Exploitation > inspector
## Description
> Can you get the flag?
Go to this website and see what you can discover.
## Hints
> How is the password checked on this website?
## Approach
> Just opened the page source, and then the css file, but found nothing useful there.  
Now, entered some dummy Username and Password and came to the page showing 'Log In Failed'. And when opened its page source, found another file 'secure.js', which contained the required username and password. Using which on successful login gave the required flag.
![Screenshot](./Screenshot%20(18).png)
## Flag
> `picoCTF{j5_15_7r4n5p4r3n7_a8788e61}`