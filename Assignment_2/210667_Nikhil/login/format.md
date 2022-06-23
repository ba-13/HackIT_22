# login

## Overview
Points: 100
Category: Web Exploitation

## Description
> My dog-sitter's brother made this website but I can't get in; can you help? login.mars.picoctf.net

## Hints
> (None)

## Approach
> Firstly follwing the standard procedure. i.e sending the request in Burp and seeing through the files/script.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-40-53.png)

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-44-27.png)

It shows that there is index.js file in it. So, I added `/index.js` in the URL.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-45-24.png)

FOund the flag, but but it was encrypted. Decrypting it gave the Flag.

## Flag
> picoCTF{53rv3r_53rv3r_53rv3r_53rv3r_53rv3rfQ}
