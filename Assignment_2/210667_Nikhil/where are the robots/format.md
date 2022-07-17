# Where are the robots

## Overview
Points: 100
Category: Web Exploitation

## Description
> Can you find the robots? https://jupiter.challenges.picoctf.org/problem/36474/ (link) or http://jupiter.challenges.picoctf.org:36474

## Hints
> What part of the website could tell you where the creator doesn't want you to look?

## Approach
> just after reading the question I thought of robots.txt. but let's follow the procedure.
sending the request in Burp and seeing through the files/script.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-20-56.png)

Here, It's written that Where are the robots?. So I added `/robots.txt` after the URL and got this.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-21-37.png)

Here, it's written that do not index the `/477ce.html`. So, I added it to URL and got the flag.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-21-52.png)

## Flag
> "`picoCTF{ca1cu1at1ng_Mach1n3s_477ce}`"
