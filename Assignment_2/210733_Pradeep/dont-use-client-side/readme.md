# dont-use-client-side
## Overview
> Points: 100  
Category: Web Exploitation
## Description
> Can you break into this super secure portal? https://jupiter.challenges.picoctf.org/problem/17682/ (link) or http://jupiter.challenges.picoctf.org:17682
## Hints
> Never trust the client
## Approach
> Just opened the page source, there were a number of nested 'if' statements, from which the password was clearly obtained.
![Screenshot](./Screenshot%20(14).png)
## Flag
> `picoCTF{no_clients_plz_b706c5}`