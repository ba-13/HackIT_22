# Cusco

## My approach

In this one, the code is little big and also little confusing. So, my initial guesses made with reading from last failed.

So, I started to observe it step by step from starting. Using `s` command mostly and `f` when the actions were repeatitive.

Wasted lot of time looking for ways to unlock via the line 4528.

Going through the code again step by step, I found that after it has returned "That password is not correct" it calls 

> 453a:  3150 1000      add	#0x10, sp

which makes the value of the sp to whatever is after 16th bit.

So, after little playing with I set the password to `010203040506070809101112131415164644` and unlocked.

Since the no. stored after 16th pos are 4644 which makes the sp to 4446 which is door unlock function.
