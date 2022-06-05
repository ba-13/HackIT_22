# Hackit assignment 0

## UNIX FILE SYSTEM

- Using basic commands like--

    **GIVEN BELOW ARE COMMANDS USE; SYNTAX IN THIS FORMAT executing just ls gives lists of directory of that folder**
    1. cd opening another folder ; cd subfolder
    2. ls listing components of a folder; executing just ls gives lists of directory of that folder
    3. pwd locating the directory currently present in; exe cuting just ls gives lists of directory of that folder
    4. ls -l listing the directory in more informative way ; just execution;
    5. ls -la same as above but more user readable form;just execution
    6. ls -lah;just execution
    7. ll alias for above;just execution
    8. cd .. going back to previous directory; just execution
    9. cd / going to home directory; just execution
    10. man command - manual to a command; man 'command'
    11. chmod -changing user permision to read/ write / execute for self/friends/global; chmod xyz 'folder_address' *sudo may be required*
    12. sudo - acts as a suprema; sudo command
    13. mkdir -creates new folder;mkdir folder_name
    14. touch- create new file (.txt); touch new_file_name
    15. cat - shows the component of that .txt file; cat file address
    16. echo- can be used to print any text in the command line or add text in the a .txt file;
        - to just print in terminal !!
        - to add text in a txt file; echo "text" > file_name.txt
    17. cp -copy files and directory ; cp src_file dest_file
    18. mv- rename  a file
        -rename; mv old_name new_name
    19. rm - remove a file; rm file_name
    20. sudo su - changes user *password req*
    21. cd /mnt/ -used to access windows using WSL
    22. history -used to see older commands
    23. grep command - to find a given line ; grep -rnw pattern file
    24. history > -c  to delete history
    25. hostname - determine system
    26. VIM -used to edit text files

## VIM command

- Used to write/edit text document
- Basic commands like--

    1. h, k,l,j to move left,up,right,down respectively
    2. :q! to leave
    3. :x to delete
    4. :i to insert
    5. :a to append
    6. :qw to save and quit
    7. :w to save
    8. vim file_name.txt to edit a txt file
    9. log files can also be accessed using vim
    10. '0' takes you to the start of the line  
    11. dd to delete an entire line
    12. u undo
    13. ctrl+r undoes the undo
    14. gg takes to the start of the file
    15. G takes to end of the file
*we can always find vimtutor or man command*
