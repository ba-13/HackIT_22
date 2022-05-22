#!/usr/bin/python3

import os
import secrets

for root, dirs, files in os.walk('./get_in'):
    # if root != "./get_in/":
    #     for t in range(5):
    #         os.mkdir(root+f"/{t}_subs")
    print(root)
    print(dirs)
    print(files)
    if dirs == []:
        for i in range(7):
            with open(root+f"/{i}.txt", 'w') as f:
                f.write(str(secrets.token_bytes(4242))[2:-1])
            print(f"Wrote {i}.txt")
