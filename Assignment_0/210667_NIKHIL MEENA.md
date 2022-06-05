# HackIT - Assignment 0

## UNIX File Systems

All the files, keys, drivers, everything is stored in some of the root folders.

Except / , every folder has . and .. folder in it. . represents the current directory and .. represents the parent directory.

### Basic commands

man - used to see manual for the command.

`ls` - list the link,files and folders in that directory.

`ls -l` - lists the link,files and folders including their details (like
permissions, owner, size, date of modification,etc..)

`ls -lh` - list the link,files and folders just like ls -l but in more readable way (eg. display 618K instead of 632096)

`ls -lah` / `ll`  - Similar to ls -lh but includes hidden files also. We can also use Ctrl+h to see the hidden files in the gui version.

Q. What do the ls commands show ??

    [image of the terminal showing output of ls -lah command]
    
    The left most row indicates the permissions to the file. 
   
    The first letter indicates the type. like - for files, d for directory/folder, l for link.

    next to it, there are 9 letters/- . The first three indicates the permissions of creator, next three for friends and next three for everyone else. 
    Permissions are displayed in format rwx where, r is for read permission, w for write permission, x for execute and - for not having those permissions.

    changing the permissions
    Permissions for the file can be changed using the command chmod <xyz> <filename>/ . here, x,y and z are numbers representing sum of the total permissions. 4 for read, 2 for write and 1 for execute permission.
    for example, if we want to change the permissions of the  creator to "read and write" and friends to "only execute and write" and others to "no permissions". then the x will be  6, y - 3 and z - 0. and the command will look like chmod 630 <filename>/

    next 2 columns represent ownership

    next one represents size of the file/folder.
    next, represents last modification time.
    and the last one represents name of the file/folder.

`whoami` - tells, with what privilage I am accessing the terminal.

`sudo` - has the supreme power, using it as preffix over any command gives the user access to every action (ie. provide root access to the user).

``cd`` - change the directory.

`pwd` - go to previous directory.

## VIM

VIM is a text editor used in the terminal. Graphical user interface isn't always available, so for text editing VIM is used.

It has 3 modes

- Normal Mode
- Insert mode

- NORMAL MODE - To read the text file.

To navigate, we use commands like j - go downwards, k - go upwards, l - to go right, h - to go left.

Can be accessed by esc key.

- INSERT MODE - To edit the file.

This mode makes it similar to notepad.

Can be accessed by pressing i key or a key.

If we access it using

`i` key, the letters will be written after the _

`a` key, then the letters will be written before the _

`o` key, will insert a line above and then start as usual.

`u` key, will undo the changes made in the file.

Using `:w` command will save changes to the file.

Using `:wq` command will exit from the text file.

`cat` - concatenate files. To read the files within the terminal.

`apt` - package manager. apt-get is also same.

## GIT

GIT is a content tracker which keeps history of how files and folders (expept empty) changes in a particular directory.

GIT won't be affected by changes outside the directory.

Whatever isn't accounted by git will be same in all the branches.

`git init` - initializes the git repository.

`git status` - checks the status of the changes made.

`git --help` - provide instructions for using the git command along with some flags.

`touch` - command used to create a file in the directory.

`echo` - printing a line in either the terminal or saving it in as a text file.

`echo -n "Hello"` - shell command used to print some sentence in the terminal.

`echo this is me` - will print this is me

`echo "this is me" > abc.txt` - will create a text file named abc.txt and will input "this is me" in it. And, if the file already exist then this will rewrite the file instead of modifying it.

`echo "Just a testing sentence" >> abc.txt` - Using >> will modify the text file.

`-A` and `*` - _wildcards_ used after the command .

`git add *` - saves only constructive changes in the current branch of the git.

`git add -A` -  saves all kind of changes in the current branch of the git.

__3 STAGES OF GIT__

- UNTRACKED/MODIFIED

When the changes are done in the file then they are kept as untracked by the git.

- STAGED

The changes which are made but aren't finally commited.

- COMMIT

This will create snapshot of the changes made. We can also all tags while commiting the changes so that when we see it later, we understand what we did.

`git commit -m` - 

`git log` - displays the log of the events done so far.

`git checkout -b < second branch name>`  - create a new branch in the current directory. named after -b

`git checkout < branch_name >` - switch to the 'branch_name' branch

`git remote add origin`  - adds remote location the origin of the directory.

`git push -u origin main`  - push the changes made locally to the cloud repository.

`git reset` - revert the commits made.

### Some basic stuff regarding github

remote - current repository

upstream - repo from which i've forked from.

pull requests - pushing changes to the upstream.