# Cookies

## Overview

Points: 40
Category: Web Exploitation

## Description

Who doesn't love cookies? Try to figure out the best one. 
<http://mercury.picoctf.net:27177/>

## Hints

No Hints

## Approach

snickerdoodle is a type of cookie and entering that on text field takes us to a new page which says  - "I love snickerdoodle cookies!".
Entering different types of cookies in search bar we get similar messages. And upon inspecting the cookies for each page they have a
cookie called name each having different integer value.
What was happening was upon searching a keyword,the cookie corresponding that may be changing and the text displayed was depending on the cookie value.
So on changing the values of cookie using **document.cookie = 'name = *[number]*'** , when name=18( which is length of string => 'name=snickerdoodle', I saw this in burpsuite so I tried the number:)) the flag is displayed.

## Flag

`picoCTF{3v3ry1_l0v3s_c00k135_064663be}`