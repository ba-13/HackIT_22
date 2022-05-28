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
2. man <name> --> show manual page of <name>
3. ls --> show content of current file location: _attributes_ [-l]--> list view with file details,[-a]--> hidden files, [-h]--> show memory of files in more readable format.
4. cat <path> --> show content of file at <path>
5. cd <path> --> change directory/location.... here **"cd../"** can be used to go one heirarchy up (**/** ends command)
6. mkdir --> make/create new directory.
7. touch <path> --> create a new empty file.
8. echo <text> --> prints <text> as it is.... "**>**" is used to execute output of echo into some other file. "**>>**" will append instead of write from start.
9. rm --> delete file
10. chmod --> change file mode bits (actually change permissions)
11. etc.

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
