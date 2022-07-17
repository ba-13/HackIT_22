# Hanoi

## My Approach

Again, reading the code in disassembly gives rough idea that the function <main> is calling <login> in which if the value stored in x2410 is 30 then we can have access to the lock.

I'm starting to read the code from end because it gives the idea that what do we need in order to unlock the lock.

Setting breakpoint at main (just to see if anything else is there), <test_passowrd_valid>, 4556.

When it stopped at `4556`, I checked the values in the x2410 and it was NULL. 

But the password I entered was stored just above the x2410. So, I thought that may be if I enter password long enough it may alter the values in `x2410`.

So, I tried little long password "testingifthisworks". And, it was stored in 2400 and 2410.

So, now I tried `0102030405060708091011121314151630` (numbers just to keep count how many have I entered) and it worked. 
