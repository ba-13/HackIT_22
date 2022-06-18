
string = 'hackIT'
with open(r'C:\Users\Malik Zadah Irfan\Desktop\file1.txt', 'r') as fp:
    
    lines = fp.readlines()
    for line in lines:    
        if line.find(string) != -1:
            print('Line Number:', lines.index(line))
            print('Line:', line)