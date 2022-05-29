# ***UNIX File System***

Unix file system is a way of organizing and storing large amounts of information in a manageable way. All data in Unix is organized into files which are present in directories. Further these directories are organized into a tree-like structure called the *UNIX file system*.

**Following are some usefull commands with their descriptions-** 

| Command | Description |
| ------- | ----------- |
|whoami | returns user's name(in case you forget it) |
|cd | changes to a particular directory |
|pwd | Prints path to current directory |
|ls | Lists elements of current directory |
|mkdir | Makes new directory with given name|
|sudo |stands for su[er user do; set of commands that give user admin power|
|touch | Creates a new file with given name|
|clear |Clears terminal window|
|exit | Closes current terminal window|
|rm | Removes mentioned file from directory|
|cat|Prints the contents of a file|
|mv | Used to rename a given file or move files to a given directory|
|history| Shows a list of commands input by user on the terminal|
|man | Shows reference material/manual for a particular command|
|nano | Opens a file in the nano text editor|
|vim | Opens a file int the VIM text editor|


*This is just a list of some basic commands, these commands also have flags that increase their usecases furthermore.*


# ***VIM***

VIM stands for Vi IMproved, and it is an open-source text editor that does not require any use of a mouse and is completely keyboard based.
It has 12 different editing modes.

Following are some shortcuts for efficient use of VIM which I learned from the 'vimtutor' page-
- In Normal mode -
    
    - The keys h,j,k and l move the cursor to the left, down, up and right respectively.
    - The'x' key can be used to delete an unwanted character
    - Typing 'dw' deletes a word present ahead of the cursor
    - Typing 'dd' deletes the line on which the cursor is present
    - Press 'u' to undo the last command
    - Type  'rx'  to replace the character at the cursor with  x
    - Type  ```:!```  followed by an external command to execute that command( e.g. ```:!ls```) 
    - Type CTRL-G to show your location in the file and the file status
    - Type ``` / ```  followed by a phrase to search for the phrase.


- ``` :q! ``` : Closes editor without saving while ```:q!``` Saves file and then closes the editor
- Pressing the 'i' key opens the INSERT mode wherein further text can be inserted.
