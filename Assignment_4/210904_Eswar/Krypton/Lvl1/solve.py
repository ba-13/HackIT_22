alphabet='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
text='YRIRY GJB CNFFJBEQ EBGGRA'
result = ''
for char in text:
        if char.isalpha():
            result += alphabet[(alphabet.index(char) + 13) % 26]
        else:
            result += char
print(result)