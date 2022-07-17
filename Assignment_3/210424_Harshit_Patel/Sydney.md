
# Approach

**check_password** has four **cmp** instructions, which are **cmp #0x7e2b, 0x0(r15)**, **cmp #0x4e37, 0x2(r15)**, **cmp #0x5c47, 0x4(r15)** and **cmp #0x7366, 0x6(r15)**. Also, MSP430 is **little endian**, as stated in **MSP430x1xx Family User's Guide**, and it has 16-bit addressing, we must convert to little-endian each pair of byte.

# Password

hex encoded: **2b7e374e475c6673**\
plain test: **+~7NG\fs**
