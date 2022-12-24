# GET aHEAD

## Approach

- The problem takes method requests of GET and POST. I used BurpSuite to intercept the requests and tried changing the method to HEAD. It lead to an empty screen. Hence, I tried interceptiong the server responses as well for the HEAD method and successfully obtained the flag.

## Flag

- picoCTF{r3j3ct_th3_du4l1ty_cca66bd3}