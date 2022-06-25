# GET_aHEAD

## Overview

Points: 20
Category: Web Exploitation

## Description

Find the flag being held on this server to get ahead of the competition 
<http://mercury.picoctf.net:47967/>

## Hints

- Maybe you have more than 2 choices
- Check out tools like Burpsuite to modify your requests and look at the responses

## Approach

Made GET and then HEAD requests using fetch API to all possible combinations of relevant links. Finally 
`fetch("http://mercury.picoctf.net:47967",{method: 'HEAD'}).then(res => console.log(res))` worked.
Check the headers section in network tabs and there was the flag.

## Flag

`picoCTF{r3j3ct_th3_du4l1ty_cca66bd3}`
