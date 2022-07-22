import string
msg = ""
letter_freq = {}

for c in string.ascii_uppercase:
    letter_freq[c] = 0

for l in msg:
    if l in string.ascii_uppercase:
        letter_freq[l] +=1 

s = [(k, letter_freq[k]) for k in sorted(letter_freq, key=letter_freq.get, reverse=True)]

print(s)
