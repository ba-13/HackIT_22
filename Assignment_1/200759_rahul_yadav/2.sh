#! /usr/bin/python3
path = r"../i_am_hiding_stuff.txt"

with open(path,"r") as f:
    line_no = 1
    for line in f:
        counter = 0
        match = ""
        pntr =0
        match_pntr = -1
        for x in line:
            if x.isdigit():
                if match_pntr==-1:
                    match_pntr = pntr
                counter+=1
                match += x
                if counter==10:
                    print(f"Match found! Line:{line_no} char:{pntr} \t match:{match}")
            else:
                match_pntr = -1
                counter =0
                match = ""
            pntr+=1
        line_no += 1

