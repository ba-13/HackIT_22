# where are the robots
## Overview
> Points: 100  
Category: Web Exploitation
## Description
> Can you find the robots? https://jupiter.challenges.picoctf.org/problem/56830/ (link) or http://jupiter.challenges.picoctf.org:56830
## Hints
> What part of the website could tell you where the creator doesn't want you to look?
## Approach
> Opening the URL after adding '/robots.txt', we get '/1bb4c.html' as:
![Screenshot](./Screenshot%20(22).png)
Then addding this to the URL, we get the required flag.
## Flag
> `picoCTF{ca1cu1at1ng_Mach1n3s_1bb4c}`