alphabet='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
text='OMQEMDUEQMEK'
result = ''
for char in text:
        if char.isalpha():
            result += alphabet[(alphabet.index(char) + 14) % 26]
        else:
            result += char
print(result)