
## Assignment 0

### VIM 

Vim has three modes insert mode, command mode, and last-line mode.

How to move around a file?

* h is used to move the cursor one character to the left.
* j is used to move the cursor to the next line.
* k is used to moves the cursor to the previous line.
* l is used to moves the cursor one character to the right.
* 0 is used to moves the cursor where the line starts.
* $ is used to moves the cursor where the line ends.
* w is used to move forward one word.
* b is used to move backward one word.
* G is used to move to the end of the file.
* gg is used to move to the beginning of the file.
* . is used to move to the last edit.
Specifying a number with a movement command
 will execute that movement multiple times.

 For editing Vim Style:
 

* d starts the delete operation.
* dw will delete a word.
* d0 will delete to the beginning of a line.
* d$ will delete to the end of a line.
* dgg will delete to the beginning of the file.
* dG will delete to the end of the file.
* u will undo the last operation.
* Ctrl-r will redo the last undo.


How to search and replace in VIM?
* /text search for text in the document, going forward.
* n move the cursor to the next instance of the text from the last search. This will wrap to the beginning of the document.
* N move the cursor to the previous instance of the text from the last search.
* ?text search for text in the document, going backwards.
* :%s/text/replacement text/g search through the entire document for text and replace it with replacement text.
* :%s/text/replacement text/gc search through the entire document and confirm before replacing text.


Copying And Pasting in VIM
* v highlight one character at a time.
* V highlight one line at a time.
* Ctrl-v highlight by columns.
* p paste text after the current line.
* P paste text on the current line.
* y yank text into the copy buffer.

Commands for saving and quitting :
* w is used to write the file to the existing filename. 
* :w filename is used to write out to a different filename.
* :q used to quit Vim.
* :q! to override.
* :wq to save and exit from vim.

### UNIX filesystem

* pwd : shows the current path.
* ls : list the current files and folders.
* cd : used to navigate within folders.
* mkdir : to create a folder.
* touch : to create a file.
* cat : to view a file.
* rm : to delete a file.
* rmdir : to delete a folder.
* mv : to move a file.
* man : manual of a command.




 