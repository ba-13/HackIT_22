# sydney

## My Approach

Roughly reading the code in disassembly gives idea that the function <check_password> provides us access to the lock.

So, this time. Instead of going throug each line I set breakpoint at <check_password>

It is comparing the value with `6763 2f6d 435f 4938` which seems like password ;).

Tried it, but didn't work...

Tried reading the code again but didn't found anything. Also tried different combinations after it but nothing worked. 

After searching for various commands and MSP430 manuals and lot many things. Found that the cmp compares 6763 as 6367.

So, tried `6367 6d2f 5f43 3849` in hex encoded input and unlocked.