# HackIT

## UNIX filesystem

Unix filesystem commands allow one to access, view and edit files and directories present on one's device through a command line interface. The following commands are found useful in Unix file systems

- 'cd' command for entering a directory named 'xyz'

   ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~$ cd experiments/

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cd experiments1/

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ |
    ~~~

- 'cd -' or 'cd ..' command for going to the previous directory

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cd ..

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cd experiments1/

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cd -
    /home/abhinavg21/experiments

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'cd /' for entering the root directory

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cd /

    abhinavg21@DESKTOP-QULR5HS:/$ |
    ~~~

- 'cd ~' to return to the home directory

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:/$ cd ~

    abhinavg21@DESKTOP-QULR5HS:~$ pwd
    /home/abhinavg21

    abhinavg21@DESKTOP-QULR5HS:/$ |
    ~~~

- 'pwd' to print the name of the directory you are currently working in

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ pwd
    /home/abhinavg21/experiments

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'ls' to view the list of files and directories present in the current directory

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'Along with 'ls', the following arguments could be used:
  - '-l' for using a long listing format.
  - '-a' to include the filenames starting with '.'(yes, the ls command ignores them by default)
  - '-h' to make files human readable, i.e, print the size of files(wherever applicalbe along with units)
  - '-R' to also see the list of files in the directories inside the directory on which 'ls' is applied

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls -a
    .  ..  experiments1  new.txt  new1.txt  new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls -l
    total 16
    drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 14:22 experiments1
    -rwxrwx--- 1 abhinavg21 abhinavg21   17 May 29 15:07 new.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls -lah
    total 24K
    drwxr-xr-x 3 abhinavg21 abhinavg21 4.0K May 29 14:58 .
    drwxr-xr-x 4 abhinavg21 abhinavg21 4.0K May 29 14:58 ..
    drwxr-xr-x 2 abhinavg21 abhinavg21 4.0K May 29 14:22 experiments1
    -rwxrwx--- 1 abhinavg21 abhinavg21   17 May 29 15:07 new.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls -la
    total 24
    drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 14:58 .
    drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 14:58 ..
    drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 14:22 experiments1
    -rwxrwx--- 1 abhinavg21 abhinavg21   17 May 29 15:07 new.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls -R
    .:
    experiments1  new.txt  new1.txt  new2.txt

    ./experiments1:
    new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'll' is an alias for the command 'ls -la' (see '-la' in the codeblock above)

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
    total 24
    drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 14:58 ./
    drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 14:58 ../
    drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 14:22 experiments1/
    -rwxrwx--- 1 abhinavg21 abhinavg21   17 May 29 15:07 new.txt*
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
    -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'cat [file]' is used to print the contents of 'file' on the standard output

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat new1.txt
    aaaaaa
    bbbbbb
    cccccc
    ddddd
    vvvvvvvv
    ddd
    nnnnnn
    akhdftcb
    hhhhhhhh

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'cat > abc.txt' is used to create a new file abc.txt(or rewrite if already existing) and add into the input that follows

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat > new.txt
    aaaaaaaa
    bbtttt
    sfdsghhr
    afwgenngfb
    ^C

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat new.txt
    aaaaaaaa
    bbtttt
    sfdsghhr
    afwgenngfb

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'cat >> abc.txt' is used to concatenate the input that follows into the already existing abc.txt

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat >> new.txt
    this line was added later
    ^C

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat new.txt
    aaaaaaaa
    bbtttt
    sfdsghhr
    afwgenngfb
    this line was added later

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- Along with 'cat' the following arguments could be used:

  - '-e' to print a '$' at the end of every line to be able identify every different line in lengthy/clumpsy documents
  - '-n' or '-b' to number the lines in the document. Apart from these extensions, the command 'nl txt_file' does the same jab.

  ~~~bash
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat -e new.txt
    aaaaaaaa$
    bbtttt$
    sfdsghhr$
    afwgenngfb$
    this line was added later$

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat -n new.txt
        1  aaaaaaaa
        2  bbtttt
        3  sfdsghhr
        4  afwgenngfb
        5  this line was added later

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat -b new.txt
        1  aaaaaaaa
        2  bbtttt
        3  sfdsghhr
        4  afwgenngfb
        5  this line was added later

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ nl new.txt
        1  aaaaaaaa
        2  bbtttt
        3  sfdsghhr
        4  afwgenngfb
        5  this line was added later

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'Ctrl' + 'C' is used to interupt an ongoing command or exit it. The "^C" seen on the standard output is actually 'Crtl' + 'C'.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat >> new.txt
    this line was added later
    ^C

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat new.txt
    aaaaaaaa
    bbtttt
    sfdsghhr
    afwgenngfb
    this line was added later

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'rm file_name' is used to remove files.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cat new3.txt
    aaaaaa
    bbbbbb
    cccccc
    ddddd
    vvvvvvvv
    ddd
    nnnnnn
    akhdftcb
    hhhhhhhh

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ rm new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ |
    ~~~

- 'rmdir dir_name' is used to remove empty directories.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ rmdir experiments1/

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    new.txt  new1.txt  new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'mkdir new_dir_name' is used to make directory inside the directory one is present in.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    new.txt  new1.txt  new2.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ mkdir experiments1
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'touch new_file_name' is used to create new files in the directory one is present in.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ touch new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ |
    ~~~

- 'file file_name' gives the type of the file

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ file new3.txt
    new3.txt: empty

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cd ..

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ file experiments1/
    experiments1/: directory
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ file new.txt
    new.txt: ASCII text
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'mv existing_file_name new_file_name' is used to rename a file or even change its extension

    ~~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    new3.txt
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ mv new3.txt renamed.exe

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    renamed.exe
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ |
    ~~~

- 'cp file_name dir_name' is used to copy a file another directory

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    new3.txt

    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ cd ..
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cp new.txt experiments1/
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cd experiments1/
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ ls
    new.txt  new3.txt
    
    abhinavg21@DESKTOP-QULR5HS:~/experiments/experiments1$ |
    ~~~

Note that until now I was introducing newlines inside the codeblocks representing the standard output above for the sake of better understanding. From hereon(for echo command), I will be copy pasting the standard output as it is.

- 'echo text' is used to print text on the standard output and then take the cursor on the next line

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~$ echo hello world
    hello world
    abhinavg21@DESKTOP-QULR5HS:~$ |
    ~~~

- Echo also supports the following arguments:

  - '-n' is used to print the text on the standard output while keeping cursor on the same line

  - '-e'allows bash to interpret backslashes, i.e., \n as newline, \b as back-space, etc.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~$ echo -n hello world
    hello worldabhinavg21@DESKTOP-QULR5HS:~$ echo

    abhinavg21@DESKTOP-QULR5HS:~/experiments$ echo "hello\nworld"
    hello\nworld
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ echo -e "hello\nworld"
    hello
    world
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'echo *' is used to print the list of directories and files inside the directory this command is used in.(similar to 'ls')

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ echo *
    experiments1 new.txt new1.txt new2.txt
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'echo text > file_name' is used to create a new file and add text to it.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  new.txt  new1.txt  new2.txt
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ echo experimenting with ubuntu > f
    ile
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ ls
    experiments1  file  new.txt  new1.txt  new2.txt
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat file
    experimenting with ubuntu
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ file file
    file: ASCII text
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'echo text >> file_name' is used to add text at the end of an existing file

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ echo lets add more to it >> file
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cat file
    experimenting with ubuntu
    lets add more to it
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'cksum file_name' gives a hash value for the file and also the no. of bits the file is occupying.

    ~~~bash
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ cksum new.txt
    3146570867 62 new.txt
    abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
    ~~~

- 'sudo' is a command that supposedly stands for 'Super User DO' and implements commands requiring admin rights.

  - 'sudo su' and 'exit' are used to enter and exit root.

  ~~~bash
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ sudo su
  [sudo] password for abhinavg21:
  root@DESKTOP-QULR5HS:/home/abhinavg21/experiments# echo success
  success
  root@DESKTOP-QULR5HS:/home/abhinavg21/experiments# exit
  exit
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
  ~~~

  - 'sudo chmod XYZ file_name' is used to change file mode/permissions. When we use the 'll' command, the first column tells the mode of the correspundinf file, the first alphabet tells if it is a directory, the next three tells the readability, writability and executability of the file for the you, the next three tell the same for friends and the last three tell the same for the other public.

   ~~~bash
   abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
   total 28
   drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
   drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
   drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
   -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
   -rwxrwx--- 1 abhinavg21 abhinavg21   62 May 29 18:50 new.txt*
   -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
   -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt
   
   abhinavg21@DESKTOP-QULR5HS:~/experiments$ sudo chmod 644 new.txt

   abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
   total 28
   drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
   drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
   drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
   -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
   -rw-r--r-- 1 abhinavg21 abhinavg21   62 May 29 18:50 new.txt
   -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
   -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt
   
   abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
   ~~~

  - 'sudo chown new_owner_name file_name' is used to change the owner of the file which is given by third column of output of 'll'.

  ~~~bash
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
  total 28
  drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
  drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
  drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
  -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
  -rw-r--r-- 1 abhinavg21 abhinavg21   62 May 29 18:50 new.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt
  
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ sudo chown root new.txt

  abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
  total 28
  drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
  drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
  drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
  -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
  -rw-r--r-- 1 root       abhinavg21   62 May 29 18:50 new.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt

  abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
  ~~~

  - 'sudo chgrp new_owner_name file_name' is used to change the owner of the file which is given by fourth column of output of 'll'.

  ~~~bash
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
  total 28
  drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
  drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
  drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
  -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
  -rw-r--r-- 1 root       abhinavg21   62 May 29 18:50 new.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt
  
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ sudo chgrp root new.txt
  
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ ll
  total 28
  drwxr-xr-x 3 abhinavg21 abhinavg21 4096 May 29 18:50 ./
  drwxr-xr-x 4 abhinavg21 abhinavg21 4096 May 29 18:50 ../
  drwxr-xr-x 2 abhinavg21 abhinavg21 4096 May 29 17:02 experiments1/
  -rw-r--r-- 1 abhinavg21 abhinavg21   46 May 29 18:48 file
  -rw-r--r-- 1 root       root         62 May 29 18:50 new.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new1.txt
  -rw-r--r-- 1 abhinavg21 abhinavg21   65 May 29 14:56 new2.txt
  
  abhinavg21@DESKTOP-QULR5HS:~/experiments$ |
  ~~~

- 'vi txt_file_name' is used edit the text in vim. More on that in the next section.

---

## VIM

Since it is difficult to show the command do its magic(as shown for bash via code-blocks) in Vim, this section will only conatain a list of command and their usage.
VIM allows the following functions:

- h => to move left
- j => to move down
- k => to move up
- l => to move right
- i => to enter insertion mode, where it funtions somewhat similar to a normal text editor. It starts editing from the place where cursor was placed
- a => to enter appending mode. Similar to insertion mode but the editing is started from an alphabet/space/character forward off where the cursor is initially placed.
- :wq => Save the changes and exit
- dw => to delete the word before which cursor is placed
- d$ => to delete the entire line to the right of the cursor
- 2w => to move cursor 2 words forward (from present position)
- 3e => to move cursor at the end of the 3rd word (from present position)
- 0 => to move to the start of the line in which cursor is present
- ndd => where n is a natural no. To delete the next n lines including the one in which's starting the cursor is placed
- u => Undo
- Ctrl+R => Restore
- rx => where 'x' is any alphabet/character replace the alphabet/character in front of the cursor with 'x'.
- ce => deleted the entire word in which's front the cursor was placed
- gg => to move to the start of the file
- G => to move to the end of the file
- Ctrl+G => to see your position in the file
- xG => where x is the line no. you want to go to, hence it takes you there.
- /abc => where abc is the word uou want to search for, hence it searches for it from top to bottom
- ?abc => where abc is the word uou want to search for, hence it searches for it from bottom to top


---