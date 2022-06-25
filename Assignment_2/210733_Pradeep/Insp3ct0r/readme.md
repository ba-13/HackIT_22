# Insp3ct0r
## Overview
> Points: 50  
Category: Web Exploitation
## Description
> Kishor Balan tipped us off that the following code may need inspection: https://jupiter.challenges.picoctf.org/problem/9670/ (link) or http://jupiter.challenges.picoctf.org:9670
## Hints
> How do you inspect web code on a browser?
There's 3 parts
## Approach
> Just opened the page source, part 1 of 3, of the flag was right there.
![Screenshot 1](./Screenshot%20(9).png)
Then, clicked on 'mycss.css' and just got the part 2 of 3.
![Screenshot 2](./Screenshot%20(11).png)
And then finally, on 'myjs.js', the part 3.
![Screenshot 3](./Screenshot%20(12).png)
## Flag
> `picoCTF{tru3_d3t3ct1ve_0r_ju5t_lucky?2e7b23e3}`