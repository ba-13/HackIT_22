#!/bin/bash

if [ -d Krypton ]; then
    echo "Directory Krypton already exists."
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

mkdir Krypton
cd Krypton
files=(1.sh 2.sh 3.sh 4.sh 5.sh)
folders=(Lvl1 Lvl2 Lvl3 Lvl4 Lvl5)

mkdir assets

cnt=1
for file in "${files[@]}"
do
    touch $file
    echo "#!/bin/bash" >> $file
    echo "" >> $file
    echo "ssh -tt krypton${cnt}@krypton.labs.overthewire.org -p 2231" >> $file
    cnt=$(( cnt + 1 ))
done;

cnt=2
for folder in "${folders[@]}"
do
    mkdir $folder
    cd $folder
    touch README.md
    echo "# Level $cnt Walkthrough" >> README.md
    echo "" >> README.md
    echo "## Password to Level $(( cnt + 1 ))" >> README.md
    echo "" >> README.md
    cd ..
    cnt=$(( cnt + 1 ))
done;

echo "Successfully created Krypton directory at $( pwd )"
