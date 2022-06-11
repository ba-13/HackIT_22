#! /usr/bin/python3
path = r"../i_am_hiding_stuff.txt"
pat = "HACK"
with open(path,"r") as f:
    line_no = 1
    for line in f:
        match = ""
        pntr =0
        for x in line:
            if x=="H":
                w = line[pntr:pntr+4]
                if w==pat:
                    match = line[pntr:pntr+4]
                    print(f"Match found! Line:{line_no} char:{pntr} \t match:{match}")
            pntr+=1
        line_no += 1
