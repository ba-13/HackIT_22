# Insp3ct0r

## Overview
Points: 50
Category: Web Exploitation

## Description
> Kishor Balan tipped us off that the following code may need inspection: https://jupiter.challenges.picoctf.org/problem/41511/ (link) or http://jupiter.challenges.picoctf.org:41511

## Hints
> How do you inspect web code on a browser?
> There's 3 parts

## Approach
> Since, It is already written on the homepage & also the name of the challenge to inspect the webpage. 

Sent request to burpsuite and saw the webpages in `HTML` and `js`. I found first one and third on but the second part was missing. So, I cleared all of them and requested again, hoping to find something. But now the `js` part was also gone :(.

Wasted lot of time seeing what's happening. And finally found that 

burpsuite was hiding the .css part and

the different formats of the site only appears in the burp for the first time. So, I had to clear the cookies and data of website and finally all three formats appeared.

Though I did found the second part by inspecting in the browser and seeing the storage. But learnt something new in burp.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-02-22.png)

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-02-22.png)

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-02-48.png)

## Flag
> "`picoCTF{tru3_d3t3ct1ve_0r_ju5t_lucky?832b0699}`"
