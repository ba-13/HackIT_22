# dont-use-client-side

## Overview

Points: 100
Category: Web Exploitation

## Description

Can you break into this super secure portal? https://jupiter.challenges.picoctf.org/problem/17682/ or http://jupiter.challenges.picoctf.org:17682

## Hints

1) Never trust the client

## Approach

Since the title says not to use the client side, i went ahead and opened the inspect element and opened the index file in the sources tab and then i looked at the following snippet of the code

'''
<html>
<head>
<title>Secure Login Portal</title>
</head>
<body bgcolor=blue>
<!-- standard MD5 implementation -->
<script type="text/javascript" src="md5.js"></script>

<script type="text/javascript">
  function verify() {
    checkpass = document.getElementById("pass").value;
    split = 4;
    if (checkpass.substring(0, split) == 'pico') {
      if (checkpass.substring(split*6, split*7) == '706c') {
        if (checkpass.substring(split, split*2) == 'CTF{') {
         if (checkpass.substring(split*4, split*5) == 'ts_p') {
          if (checkpass.substring(split*3, split*4) == 'lien') {
            if (checkpass.substring(split*5, split*6) == 'lz_b') {
              if (checkpass.substring(split*2, split*3) == 'no_c') {
                if (checkpass.substring(split*7, split*8) == '5}') {
                  alert("Password Verified")
                  }
                }
              }
      
            }
          }
        }
      }
    }
    else {
      alert("Incorrect password");
    }
    
  }
</script>
<div style="position:relative; padding:5px;top:50px; left:38%; width:350px; height:140px; background-color:yellow">
<div style="text-align:center">
<p>This is the secure login portal</p>
<p>Enter valid credentials to proceed</p>
<form action="index.html" method="post">
<input type="password" id="pass" size="8" />
<br/>
<input type="submit" value="verify" onclick="verify(); return false;" />
</form>
</div>
</div>
</body>
</html>

'''

In the verify function I noticed the variable split assigned to 4 so each substring assigned to 4.
So arranging the codes in ascending order we get the flag

## Flag

picoCTF{no_clients_plz_b706c5}
