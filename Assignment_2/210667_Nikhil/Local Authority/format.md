# Local Authority

## Overview
Points: 100
Category: Web Exploitation

## Description
> Can you get the flag? Go to this website and see what you can discover.

## Hints
> How is the password checked on this website?

## Approach

> Used login username as `admin` and password as `password`.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2020-55-41.png)

Was playing around with the encryption used in the username...

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2021-02-01.png)

Going through the html of login.php, found that `secure.js`
is also present on the  server. 

Added `/secure.js` in the URL and found the correct password.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2021-06-26.png)

Entering the correct credentials gave the Flag.

![](https://github.com/Akhilstaar/HackIT_22/blob/main/Assignment_2/NIKHIL%20MEENA%20ASSIGNMENT%202/Assets/Screenshot%20from%202022-06-20%2021-08-04.png)

## Flag
> "`picoCTF{j5_15_7r4n5p4r3n7_05df90c8} `"
