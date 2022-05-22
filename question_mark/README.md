# Congrats

The first step of completing any challenge is to go through its presented problem statement, and you decided to open the README.txt, the first file you should always open of an unknown directory.

This challenge is based on 3 problems, presented as

```bash
.
├── README.md
├── solution.md
├── zeroth.c
├── first.txt
├── second.py
└── third.zip

# These above are the files in this folder.
```

A challenge `[zeroth.c, first.txt, second.py, third.zip]` may unlock a clue to the next one.
But note that each challenge is otherwise independent.
Read through the files, using a proper text editor. Google those terms that you don't understand.

## Directions

0) [BASIC] [zeroth.c] Just read (run) it. This needs to be completed at least partially (till installing WSL2) to move forward.

1) [NORMAL] [first.txt] Now go ahead, because your characters are about to be rotated \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n

2) [HARD] [second.py] Moving on, you should know that the second challenge is based on the Google Search button of www.google.com. Inspect it carefully **on your browser**, find its input's class. Enter that class string as an input to second.py. Example:
if the class you found was "8xlsdj3", run "python3 second.py 8xlsdj3" on the terminal

3) [INSANE or is it?] [third.zip] Third.zip is locked. Its password is what you think it is.
    Once you find the password, On your linux terminal, run:

    ```bash
    unzip -P your_password_here -o third.zip
    # example
    # unzip -P password -o third.zip
    ```

    Now find a string of the form `hackIT{...}` in some file in this directory system you extracted.

---

You don't need to solve all the Questions.
If you're able to solve a challenge partly, do provide its steps, I will consider partial marking :)
Submit your answers through the file `solution.md`, and rename it as `yourRollNumber_solution.md`.

> Do remember to enjoy. We'll release hints if majority needs arise!
