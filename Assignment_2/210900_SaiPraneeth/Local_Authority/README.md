# Local Authority

## Overview
1) Points: 100
2) Category: Web Exploitation

## Description

Can you get the flag?
Go to this website and see what you can discover
http://saturn.picoctf.net:52682/

## Hints
How is the password checked on this website?

## Approach

Initially checking Inspect tab gives no clue, but after typing a random credential and logging in, a new file gets added to the sources tab ie the secure.js file

![p1](p1.png)


we can see the username and password in the if block

using this we can see the flag

## Flag

picoCTF{j5_15_7r4n5p4r3n7_a8788e61}
