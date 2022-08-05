# logon

## Overview
Points: 100  
Category: Web Exploitation

## Description
The factory is hiding things from all of its users. Can you login as Joe and find what they've been looking at? https://jupiter.challenges.picoctf.org/problem/44573/ (link) or http://jupiter.challenges.picoctf.org:44573  

## Hints
Hmm it doesn't seem to check anyone's password, except for Joe's?  

## Approach
changing the value of admin to true in cookie gave the flag
![ Got the flag](https://cdn.discordapp.com/attachments/776326384355377152/988425761545388072/unknown.png)

## Flag
`picoCTF{th3_c0nsp1r4cy_l1v3s_0c98aacc}`