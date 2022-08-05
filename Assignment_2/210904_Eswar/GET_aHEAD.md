# GET aHEAD

## Overview
Points: 20  
Category: Web Exploitation

## Description
Find the flag being held on this server to get ahead of the competition

## Hints
Maybe you have more than 2 choices  
Check out tools like Burpsuite to modify your requests and look at the responses

## Approach
The requests for getting red and blue colors are not same  
![ Getting Red](https://cdn.discordapp.com/attachments/776326384355377152/987957137953144913/unknown.png) 
![ Getting Blue](https://cdn.discordapp.com/attachments/776326384355377152/987957663147110400/unknown.png)
So I tried to modify Red Request and  I found the flag by doing this   
![ Got the flag](https://cdn.discordapp.com/attachments/776326384355377152/987957936452149269/unknown.png)

## Flag
`picoCTF{r3j3ct_th3_du4l1ty_6ef27873}`