#! /usr/bin/python3
path = r"../i_am_hiding_stuff.txt"

pat = "hackIT{"
with open(path,"r") as f:
    line_no = 1
    for line in f:
        match = ""
        pntr =0
        for x in line:
            if x=="h":
                w = line[pntr:pntr+7]
                if w==pat:
                    crt = pntr+7
                    while crt < len(line):
                        if line[crt]=="}":
                            break
                        crt+=1
                    if crt==len(line):
                        break
                    else :
                        match = line[pntr+7:crt+1]
                        print(f"Match found! Line:{line_no} char:{pntr} \t match:{pat+match}")
            pntr+=1
        line_no += 1
