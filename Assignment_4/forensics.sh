#!/bin/bash

if [ -d Forensics ]; then
    echo "Directory Forensics already exists."
    exit 1
fi

checkingList=($( ls .. ))
flag=0
for ((i = 0; i < ${#checkingList[@]}; i++))
do
    item="${checkingList[$i]}"
    [[ $item == "assets" ]] && flag=$(( $flag + 1 ))
done
if [[ $flag == 0 ]]; then
    echo "Make your own working directory first of the form 2XXXXX_yourName"
    echo "This should lead to directory structure as:"
    echo ".
├── 2XXXXX_yourName
├── assets
│   └── code.c
├── krypton.sh
├── forensics.sh
└── ghidra.sh"
    exit 2
fi

mkdir Forensics
cd Forensics
folders=("information"
"Matryoshka doll"
"tunn3l v1s10n"
"Glory of the Garden"
"Wireshark doo dooo do doo..."
"MacroHard WeakEdge"
"Trivial Flag Transfer Protocol"
"Wireshark twoo twooo two twoo..."
"advanced-potion-making"
"Enhance!"
"File types"
"Lookey here"
"Packets Primer"
"Redaction gone wrong"
"Sleuthkit Intro")

mkdir assets

for ((i = 0; i < ${#folders[@]}; i++))
do
    file="${folders[$i]}"
    touch "$file".md
    cat > "${file}".md <<EOL
# ${file}

## Overview

Points:
Category:

## Description

> Paste the problem description here

## Hints

> Paste the Hints here

## Approach

> Paste any relevant screenshot. Give a short but replicable approach you took.

## Flag

> Replace the flag you found below, within "\`\`"
\`picoCTF{pAs71_781_flAG}\`
EOL
done

echo "Successfully created Forensics directory at $( pwd )"
