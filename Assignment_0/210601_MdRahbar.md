# Assignment 0

## I am MD RAHBAR, 210601

---

## UNIX FileSystem

As everything is a file, so to manage all the files (whether large or small) many systems are used... One of such system is **Unix FileSystem**

### Files in Unix Subsystem

1. Files in unix file system are arranged heirarchy with on the top being **Root** file denoted by **/**.
2. Under Root directory there are multiple directories and one of them being **~** --> **Home** Directory .
3. There are others as well, some of them are listed below:
   - **/bin** --> contains binary files.
   - **/dev** --> contains info about devices.
   - **/root** -> The home directory of super user "root" i.e. the system administrator.
   - etc.

---

### Unix Commands

1. pwd --> show current location
2. man **name** --> show manual page of **name**
3. ls --> show content of current file location: _attributes_ [-l]--> list view with file details,[-a]--> hidden files, [-h]--> show memory of files in more readable format.
4. cat **path** --> show content of file at **path**
5. cd **path** --> change directory/location.... here **"cd../"** can be used to go one heirarchy up (**/** ends command)
6. mkdir --> make/create new directory.
7. touch **path** --> create a new empty file.
8. echo **text** --> prints **text** as it is.... "**>**" is used to execute output of echo into some other file. "**>>**" will append instead of write from start.
9. rm --> delete file
10. chmod --> change file mode bits (actually change permissions)
11. sudo --> it is super user command i.e. to run as administrator... eg: sudo apt-get install python: to install python.
12. etc.

---

### Permissions in linux file system

**chmod**
<pre>
for example: a directory
drwxr-xr-- "filename/directoryName is xyz"
Here d => directory
r=> readable           weight: 4
w=> writable                   2
x=> executable                 1
</pre>
if file is readable + writable + executable 
now here, xyz is **rwx** by owner, **r & x** by group and only **r** by others.

---

## Git

It is version control manager/tracker. It will track how your file changes and stores/keeps the history of your file(s). What they were before and are now.

### git commands

git init --> creates/initialises a git repository

git status --> shows the status or any update you have made to your files in your current directory and its sub directories.

git branch [-m] xyz--> creates a new branch, actually a copy of current branch in which you can do any modification which will not be showed up in your master/main branch. 

git checkout (main) --> to change branch (here to main)

git add *  --> update all the changes you have made to your **files** in the current directory.

git add -A --> update the changes in **directories** as well.

git commit -m xyz --> A commit, or "revision", is an individual change to a file (or set of files). It's like when you save a file, except with Git, every time you save it creates a unique ID (a.k.a. the "SHA" or "hash") that allows you to keep record of what changes were made when and by who.

git log --> to check the log of your changes and commits.

rm -rf git --> to get out of git.


#### steps to update github repository

1. Fork the repo, create personal access command line token and copy the URL.
   OR
   **you can directly access any repository directly from VSCode.**

2. Follow the following commands:
   - git clone "URL"
   - Start editing in any text editor
   - after making changes, git add * and git add -A
   - then check git status
   - then do git commit -m "your_message".
   - push your code using git push -u origin **"branch_name"**.

3. Make a pull request on github.

### Markdown File
