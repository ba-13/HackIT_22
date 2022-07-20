#!/bin/bash

if [ -d Forensics ]; then
    echo "Directory Forensics already exists."
    exit 1
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
    file="${folders[$i]}".md
    touch "$file"
    cat > "${file}" <<EOL
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
