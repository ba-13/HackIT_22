# Repository for HackIT'22 Summer Project

This repo would be used to document mentees' writeups for the provided Assignments.  
Check your standings [here](https://ba-13.github.io/HackIT_22)

---

## Assignment 0

Make a writeup about what you understood about `UNIX filesystem` and `vim`.  
Document the shortcuts and concepts you learnt, more comprehensive, better score (relatively scored throughout the project :). Just don't copy from somewhere (if you found it on the internet, so would we)  
Please fork this repository, clone it locally, put your writeup names as
`2XXXXX_YourName.md` in the corresponding [assignment folder](./Assignment_0). Commit with meaningful message, push to your remote origin, and make a pull request(PR) to this repo's `main` branch.  
You may work on a new branch on your fork, but PR on this main only.  
Note that the upcoming Assignments won't be submitted in this manner. This is
done to help you understand a basic workflow of git.

Submit a PR **by Sunday, May 29th 2022**, no deadline extension. You can of
course submit before!

---

## Assignment 1

You're given a [file](./Assignment_1/i_am_hiding_stuff.txt). It's too long for you to go through. But there are a few pieces of information lying in midst that string that you need to find.

1. The word "HACK"
2. A 10 consecutive digit Number
3. A link based on File Transfer Protocol at Port 8080
4. A substring of the form "hackIT{...}"

It's guaranteed that the formats would be like this, with no other such substrings in that file

The problem is you're only provided the access of `/bin/bash` or `/usr/bin/python3` (i.e. you can use bash or python as languages, with these being included in the she-bang line), with no other string search binaries or libraries. It means you **can't** use tools like `grep`, `awk`, `tr`, `sed`, `re`, etc. Only i/o tools or libraries and pure scripting.  
So create 4 scripts of name `1.sh`, `2.sh`, `3.sh`, and `4.sh` for the corresponding problems, mark them as executables, such that running them directly outputs the needed strings.

> Bonus : Apart from returning/echo-ing values, return/echo their line numbers as well.

You've to submit a directory of name `XXXXXX_Your_Name` with `XXXXXX` being your roll number. Keep all 4 scripts and any bonus related writeup inside that directory. Commit this folder **inside [Assignment_1](./Assignment_1/)** and make a PR on this repo's `main` branch ONLY.

I'm giving a choice between `bash` or `python`, because this will decide how comfortable you get in either. You'll eventually find that mostly all languages can replace each other, so it comes down to convenience and speed.

> NOTE: A bash based submission will be scored higher (x1.2 score) than the corresponding python based. This is because you're meant to practice bash scripting. You can opt for using both languages partly (1 and 2 for bash, 3 and 4 for python).

Do remember that judgement is on you using BASH/Python3 with no pre-built string manipulation commands. Inefficient but working code **is acceptable** for this assignment. Use any amount of nesting you want! (Just that it should run within 5 seconds).

Submit a PR **by Sunday, June 5th 2022**, no deadline extension. You can of course submit before!

---

## Assignment 2

Delving into basic Web Exploitation, Complete the CTFs listed here:

<details open>
<summary>CTF List</summary>

- Get aHEAD
- Cookies
- Insp3ct0r
- Scavenger Hunt
- Some Assembly Required 1
- More Cookies
- where are the robots
- logon
- dont-use-client-side
- It is my Birthday
- Who are you?
- login
- Includes
- Inspect HTML
- Local Authority
- Search Source
- Some Assembly Required 2
- Super Serial
- Most Cookies
- caas

</details>

These can be found [here](https://play.picoctf.org/practice?category=1&page=1&solved=1) at PicoCTF.  
Update your progress [here](https://docs.google.com/spreadsheets/d/1pwF0dJMnHRXFQ7l-wLOAkd--_vdlF4Mhuqz55p0xjlE/edit?usp=sharing).

To submit this assignment, make a `approach.md` file per challenge.
<details>
<summary>Here's the format:</summary>

```md
# Title of Challenge

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
> Paste the flag you found like below, within "``"
`picoCTF{pAs71_781_flAG}`
```

</details>

Also make a directory that contains this file, directory name being the challenge name, usually snake_cased file naming is used (e.g. get_ahead).

```bash
get_ahead
    ├── connect.sh
    ├── approach.md
    └── flag.txt
```

Here `connect.sh` can contain the link given in the PS. `flag.txt` containing the flag, and `approach.md` being the markdown explaination in the format as above.
Usually each challenge is solved by giving its own directory, so things don't get cluttered.

If you're including a screenshot, create an `assets` folder in your root directory with all your static resources there, and link all screenshots from there in your `approach.md`.  

<details>
<summary> Assignment Submission should look like: </summary>

```bash
Assignment_2
 ├── 2XXXXX_YourName
 │   ├── assets
 │   │   └── Screenshot from 2022-06-19 18-41-40.png
 │   ├── caas
 │   │   ├── approach.md
 │   │   ├── connect.sh
 │   │   └── flag.txt
 ...
 
 │   └── who_are_you
 │       ├── approach.md
 │       ├── connect.sh
 │       └── flag.txt
 │
 ├── 2YYYYYY_SomeoneElse

```

</details>

Another approach you can take is just writing an approach file per challenge, naming that file on that challenge name instead.

Submit a PR **by Friday, June 22nd 2022**, no deadline extension. You can of course submit before!

---

## Assignment 3

Delving into basic RE, Complete the following challenges on [Microcorruption](https://microcorruption.com/map)  
Get started about what Microcorruption is [here](https://z-r0crypt.github.io/blog/2019/11/25/microcorruption-ctf---tutorial/)  

<details open>
<summary> Cities to unlock </summary>

- Tutorial (Implicit)
- New Orleans
- Sydney
- Hanoi
- Cusco
- Reykjavik

</details>

To submit this assignment, make a file per challenge.

<details>
<summary>Here's the format:</summary>

```md
# Title of Challenge

## Approach
> Paste any relevant screenshot. Give a short but replicable approach you took.

## Passcode
> Paste the passcode to the lock you found within "``"
`R&!\|d0m`
```
</details>

<details>
<summary>Assignment Submission should look like:</summary>

```bash
Assignment_3
 ├── 2XXXXX_YourName
 │   ├── assets
 │   │   └── Screenshot from 2022-07-15 21-20-40.png
 │   │   └── Screenshot from 2022-07-16 18-11-40.png
 │   ├── cusco.md
 │   ├── new_orleans.md
 │   ├── hanoi.md
 │   ├── reykjavik.md
 │   ├── sydney.md
 │   └── tutorial.md
 │
 ├── 2YYYYYY_SomeoneElse

```

</details>

Submit a PR **by Sunday, June 17th 2022**, no deadline extension. You can of course submit before!

---

## Assignment 4

You've choices for this last Assignment! Choose well.  
Scoreboard will contain all 3 as seperate Assignments though, so better if you solve more.  
Make a directory of format `yourRollNumber_yourName`. **This will be your working directory**.
Get inside it and work out the following

### Reverse Engineering with Ghidra `[EASY]`

<details>
<summary>Setup</summary>
Make sure these files are in this folder for this to be considered as a submission.

```bash
cp ../ghidra.sh .
chmod +x ghidra.sh
./ghidra.sh
```

</details>

| Assembly Help | Ghidra Installation Help |
| ------------- | ------------- |
| [Cheatsheet](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf) | [Windows](https://www.youtube.com/watch?v=tTpX9fxJ7Vc) or [Linux](https://www.youtube.com/watch?v=FceecDBW_N4) |

You're given a C source [file](./Assignment_4/assets/code.c). You're going to replicate making of a basic RE challenge and solving it yourselves.  

- Run the script `ghidra.sh` as shown above
- Create a new Ghidra project **in this working directory** called "Assignment4_2XXXXX` (your roll number again), add these two binaries in it.
- First decompile `unstripped.out`. **Note** down any differences you obtain in `code.c` and the decompiler's output.
- Now manually work out the password, given the decompiled C code of `unstripped.out`. You'll notice that decompiled code is significantly more complex and statically-typed than the actual one.
- Check if it works by running `unstripped.out`, and save the flag you received from it in `flag.txt`
- Load `stripped.out` in Ghidra, decompile it, and **Note** the differences you can notice between this code and the previous one.

Done? You swear you didn't use `printf`s right?  
Great!

Make sure these files are in this folder for this to be considered as a submission.

<details>
<summary>Final directory structure to be submitted</summary>

```bash
Ghidra
├── code.c
├── README.md
├── Assignment4_2XXXXX.gpr
├── Assignment4_2XXXXX.rep
├── a.out
└── b.out
```
</details>

### Old Cryptography `[NORMAL]`

<details>
<summary>Setup</summary>

Running the following would give a layout of the writeup you're meant to submit.  

```bash
cp ../krypton.sh .
chmod +x krypton.sh
./krypton.sh
```

</details>

This is the [Krypton](https://overthewire.org/wargames/krypton/), another OverTheWire Wargame  
You're meant to solve till Level 5 (inclusive), and work on the correspondingly made directories inside `Krypton` folder.
Run `connectToLvlX.sh` file to connect to `LevelX` of KryptonLabs.
You're meant to save the passwords, and steps on `README.md` present inside each directory from `Lvl2` to `Lvl5`. You're also recommended to copy relevant files from the Krypton server to the respective directory, according to level you're working on.

<details>
<summary> README.md structure </summary>

```md
# Level X Walkthrough

## Password to Level X+1
LMAOP

## Description
> Paste README content of that level present in the remote
> Also attach any relevant screenshots if any
```
</details>

<details>
<summary>Final directory structure to be submitted</summary>

```bash
Krypton
├── assets
│   ├── Screenshot 1
│   └── Screenshot 2
├── connectToLvl1.sh
├── connectToLvl2.sh
├── connectToLvl3.sh
├── connectToLvl4.sh
├── connectToLvl5.sh
├── Lvl1
│   ├── solve.py
│   └── README.md
├── Lvl2
│   ├── solve.py
│   └── README.md
├── Lvl3
│   ├── solve.py
│   ├── found1.txt
│   ├── found2.txt
│   ├── found3.txt
│   ├── password.txt
│   └── README.md
├── Lvl4
│   ├── solve.py
│   ├── found1.txt
│   ├── found2.txt
│   ├── password.txt
│   └── README.md
└── Lvl5
    ├── solve.py
    ├── found1.txt
    ├── found2.txt
    ├── found3.txt
    ├── password.txt
    └── README.md
```

</details>

### Forensics `[HARD]`

<details>
<summary>Setup</summary>
Running the following would give a layout of the writeup you're meant to submit.  

```bash
cp ../forensics.sh .
chmod +x forensics.sh
./forensics.sh
```
</details>

You're given the following challenges to complete from [PicoCTF](https://play.picoctf.org/practice?category=4&page=1&solved=0)

<details open>
<summary> CTF List </summary>

- information
- Matryoshka doll
- tunn3l v1s10n
- Glory of the Garden
- Wireshark doo dooo do doo...
- MacroHard WeakEdge
- Trivial Flag Transfer Protocol
- Wireshark twoo twooo two twoo...
- advanced-potion-making
- Enhance!
- File types
- Lookey here
- Packets Primer
- Redaction gone wrong
- Sleuthkit Intro

</details>

Intro to [Forensics](https://ctf101.org/forensics/overview/)  
You already know the drill by now.

Submit a PR **by Friday, June 22nd 2022**, no deadline extension. You can of course submit before!
