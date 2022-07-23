#!/bin/bash

if [ -d Ghidra ]; then
    echo "Directory Ghidra already exists"
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

mkdir Ghidra
cd Ghidra


cp ../../assets/code.c .    # copying the source file
touch README.md             # will contain all your notes
touch flag.txt              # will contain flag obtained
gcc -o unstripped.out code.c
gcc -s -o stripped.out code.c

cat > README.md <<EOF
# Decompilation with Ghidra

## Passcode

> Paste the passcode you found through decompiled code analysis

## Approach with unstripped binary `unstripped.out`

## Differences between unstripped and stripped binaries

## Flag

> Paste the flag you obtained below between "\`\`"
\`picoCTF{pAs71_781_flAG}\`
EOF

echo "Successfully created Ghidra directory at $( pwd )"
