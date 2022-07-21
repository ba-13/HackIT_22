# Cusco

## Approach
> Here, at the address, 43f3 it can be observed that buffer overflow happens after 16 bytes. And thus after that we need to ensure the last 2 bytes to be 4464, but we need to convert this to the little endian system and thus using 4644 at the end works.
![Screenshot](./Screenshot%20(33).png)

## Passcode
> `22222222222222224644`