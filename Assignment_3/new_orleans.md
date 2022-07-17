# new orleans

## Approach

> went through the disassembly code entering "password" as password.

Set breakpoint to main and did same and went through each and every line which is executed.

Now, I started it from starting and step by step

there is a function 

> 443c:  b012 7e44      call	#0x447e <create_password> 

which seems like creating the password even before asking for it.

going through the password check function, I found that it was comparing it with what is stored in 2400 i.e R(Jh@R_.

I tried that as password and unlocked.
