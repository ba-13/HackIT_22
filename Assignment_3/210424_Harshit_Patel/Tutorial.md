
# Tutorial

## Approach

> The content of **r15** is set at inside **check_password** that is called at **0x444c**. If the number of bytes read is **0x9**, **check_password** places**0x1** into **r15**, otherwise it places **0x0** and null byte is used to represent end of character sequence. So, any **8** bytes is the password.

## Password

> hex coded: `1111111111111111`\
plain text: `password`
