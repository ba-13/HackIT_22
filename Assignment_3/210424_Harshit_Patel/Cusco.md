
# Cusco

## Approach

> There is a **buffer overflow** and the buffer starts at address **0x43ee**, at the moment of **ret**, **sp** points to **0x43fe**.
Number of padding bytes = 0x43fe - 0x43ee = **0x10**.
There should be **16 bytes** (in decimal). **unlock_door** is at **0x4528** and **MSP430** is **little-endian**.

## Password

> hex encoded: `000000000000000000000000000000002845`\
plain test: `0000000000000000(E`
