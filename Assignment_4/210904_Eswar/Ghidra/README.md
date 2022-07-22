# Decompilation with Ghidra

## Passcode
+ The passcode is piJcLoEq

## Approach with unstripped binary 
![unscripted.out.c](https://cdn.discordapp.com/attachments/776326384355377152/999904922562740355/Screenshot_from_2022-07-22_10-34-22.png)  
This program is comparing the passcode we entered with the code generated using  functions with some hex characters . So after collecting those characters and converting back into Ascii gave the passcode  

## Differences between unstripped and stripped binaries
The stripped binaries miss the direct information about the main and other functions . So it is difficult to analyze what's going on. The unstripped gave some information about the main and other functions.  

## Flag

`hackIT{passwordispoUaUyLc}`
