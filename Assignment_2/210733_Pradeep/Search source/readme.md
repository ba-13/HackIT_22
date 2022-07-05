# Search source
## Overview
> Points: 100  
Category: Web Exploitation
## Description
> The developer of this website mistakenly left an important artifact in the website source, can you find it?  
The website is here
## Hints
> How could you mirror the website on your local machine so you could use more powerful tools for searching?
## Approach
> Just opened the page source, there were some css files. Opened the 'css/style.css' and on scrolling got the flag there.
![Screenshot 1](./Screenshot%20(19).png)
Or alternatively, inspect the webpage and in 'Sources' search for "picoCTF{" using the 'Search in all files' option.
![Screenshot 2](./Screenshot%20(20).png)
## Flag
> `picoCTF{1nsp3ti0n_0f_w3bpag3s_587d12b8}`