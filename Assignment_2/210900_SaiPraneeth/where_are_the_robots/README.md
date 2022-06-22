# Where are the robots

## Overview
Points: 100
Category: Web Exploitation

## Description

Can you find the robots? https://jupiter.challenges.picoctf.org/problem/56830/ (link) or http://jupiter.challenges.picoctf.org:56830

## Hints 

1) What part of the website could tell you where the creator doesn't want you to look?

## Approach

Judging from the title name and from the CTF checklist, my first instinct was to check for the robots.txt file, which took me to a page with the following,

User-agent: *
Disallow: /1bb4c.html

adding that to the url, we get the required flag

## Flag

picoCTF{ca1cu1at1ng_Mach1n3s_1bb4c}
