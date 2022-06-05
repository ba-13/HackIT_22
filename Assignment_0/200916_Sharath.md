
# Assignment 0

Basics commands and their functions of `UNIX filesystem` and `vim`.

### UNIX filesystem

- `pwd` : outputs the path of the current directory.
- `ls` : lists all the files and folders in the current directory.
- `cd <path>` : to navigate in-between folders.
- `mkdir <foldername>` : to create a new folder.
- `touch <filename>` : to create a new file.
- `cat <filename>` : to view a file.
- `rm <filename>` : to delete a file.
- `rmdir <foldername>` : to delete a folder.
- `mv <foldername> <path>` : move a folder to a desired path.
- `man <command>` : manual page of the command.

### VIM

#### Modes

- command mode: all the alphanumeric keys are commands rather than inserting the characters.
- insert mode: to type normally.
- last-line mode: to save/quit the file.

by default vim enters into command mode as the file opens.

#### Command mode 

- `h` : move the cursor one character left.
- `j` : move the cursor one line down.
- `k` : move the cursor one line up.
- `l` : move the cursor one character right.
- `w` : move forward one word.
- `b` : move backward one word.
- `0` : move the cursor to the begining of the current line.
- `$` : move the cursor to the end of the current line.
- `gg` : move the cursor to the begining of the file.
- `G` : move the cursor to the end of the file.
- `dw` : delete the word cursor pointing to.
- `d0` : delete to the begining of the line.
- `d$` : delete to the end of the line.
- `dgg` : delete to the begining of the file.
- `dG` : delete to the end of the file.
- `u` : undo last operation.
- `Ctrl+r` : redo the last undo.
- `/text` : search for the text in the document going forward.
- `n` : move to the next instance of the search.
- `N` : move to the previous instance of the search.
- `:%s/text/replacement_text/g` : replace every text found in the document with replacement_text.
- `v` : highlight one character at a time.
- `V` : highlight one line at a time.
- `Ctrl+v` : highlight by columns
- `y` : copy the highlighted text.
- `p` : paste after current line.
- `P` : paste one the current line.

Note: if no text is copied the last deleted are pasted.

To switch to insert mode press `i` and to switch back to command mode press `esc`.

#### Last-line mode

Last-line mode commands are directly used from command mode.

- `:w` : save the file.

- `:w <filename>` : If you don't have a filename or want to write to different filename.

- `:q` : exit

- `:wq` : save and exit.

- `:q!` : exit without saving.






## Authors

- [@Sharath0313](https://github.com/Sharath0313)

