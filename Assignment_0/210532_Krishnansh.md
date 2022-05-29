# Assignment 0

**NAME : KRISHNANSH AGARWAL** <br />
**ROLL NO. : 210532**

## UNIX FileSystem

<br />

### 1. Files in Unix

At the top of the heirachy is the **root** file which can be referred with **/**.With access to root directory, you can do anything to the system. Any file stored there can be access and modified if permission granted.
Now there are multiple directories under root, some of them being:

   - **/home**: contains home direcory for user data. 
   - **/bin** : contains binary files.
   - **/boot** : contains files required for booting.
   - **/lib** : contains system libraries, and some critical files such as kernel modules or device drivers.

---

### 2. Commands in Unix 

1. pwd : Print Working Directory (As name suggests it prints the current directory) 
2. mkdir : make directory
3. rmdir : remve directory
4. cd : change directory => cd **location of directory** , **"cd../"** can be used to go one heirarchy up , **"cd** takes you to root directory. 
4. ls : prints all directories and files present in current directories.
   Important flags: **ls -l** lists all content with detailed info
                    **ls -a** lists hidden files as well 
                    **ls -h** show memory of files in more readable format.
5. touch : creates a new file in current directory.
6. rm : remove file
7. cat : shows content of file.
8. man : show manual of any command. Usage => **man *command_name***
9. echo : Usage => echo *text* prints *text* on the terminal  
                   "**>**" will overwrite content of file with *text*  
                   "**>>**" will append instead of over-write.
10. chmod : change mode. Used to change user permissions.
11. grep : globally search a regular expression. Used to search a file for a regular expression
12. sudo : it is super user command i.e. to run as administrator.

---

### 3. Permissions

**chmod command is used to set permissions for different users**

<pre>
*Example:*<br />
drwxr-xr--                    (directory name is dir1)<br />
Here d => directory<br />
If we are giving permissions to a file then instead of d there should be a '-'<br />
r = readable           weight: 4<br />
w = writable                   2<br />
x = executable                 1<br />
"-" = no permission

The first three charachters refers to permission of owner
The next three charachters refers to permission of group
The last three charachters refers to permission of others

dir1 has **rwx** permissions for owner, **r & x** permissions for group and only **r** for others.
</pre>
---
---

<br />

## VIM

Vim is text-editor for UNIX that makes writing command for linux faster and easier. It has both GUI and CLI but usually everything can be done without using mouse. 

---

To open a file in vim text editor => **vim *location of file***

If the named file doesn't exist vim will create the file at the specified location.

---

### Navigation 

Navigation can be done through arrow keys or J K H L keys can be used

To navigate the cursor to a particular line write :*line_no.* to move to that line.

---

### Vim Commands

- Insert **i** : To edit content of file, press 'I', this takes you to the insert operation.
- **o** : Creates a new line and lets inserting text there.
- Undo **u** 
- Save changes **:w** : Write this at the end of file to save changes.
- **:wq** : Save and exit out of file

- **!q** : Trash all changes and exit out of file
- **dd** : Deletes current line 

To get out of any operation in Vim just press Esc key.

---
