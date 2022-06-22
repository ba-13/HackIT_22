# Scavenger Hunt

## Overview
Points: 50
Category: Web Exploitation

## Description
> There is some interesting information hidden around this site http://mercury.picoctf.net:39698/. Can you find it?

## Hints
> You should have enough hints to find the files, don't run a brute forcer.

## Approach
> Firstly follwing the standard procedure. i.e sending the request in Burp and seeing through the files/script.

Found the first part of the flag in the `.HTML` file of the page.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-05-55.png)

another part in the `.css` file. 

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-06-20.png)

Here, it's written that how to stop your site from being indexed. I searched it on google and it returned 'through robots.txt'. So, I added `/robots.txt` after the URL.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-08-14.png)

Can't find anything anything after this. Skipping to next...

EDIT : After wasting lot of time, and trying different (stupid) things. Finally found its `/.htaccess`

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-11-51.png)

Similarly, for mac its `.DS_Store`

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-12-56.png)

## Flag
> picoCTF{th4ts_4_l0t_0f_pl4c3s_2_lO0k_fa04427c}
