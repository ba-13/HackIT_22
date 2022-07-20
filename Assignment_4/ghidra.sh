#!/bin/bash

if [ -d Ghidra ]; then
    echo "Directory Ghidra already exists"
    exit 1
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
