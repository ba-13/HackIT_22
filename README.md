# Leaderboard for HackIt 2022

This is a REACT based codebase that implements a leaderboard for the SnT project HackIt, PClub, IITK.  
Access it [here](https://ba-13.github.io/HackIT_22).  
Once you receive data of the form of:

1. [data_profiles.js](./src/data/data_profiles.js)

    ```json
    [
        ...
        {
        "name" : "Zaina Bali",
        "roll" : "191510",
        "scores" : "0746140"
        },
        ...
    ]
    ```

2. [data_problems.json](./src/data/data_problems.js)

    ```json
    [
        ...
        "Reverse Engineering 3.5 Question about...",
        ...
    ]
    ```

This is profiles info, where scores are counted from Assignment 0 to the left, and latest Assignment to the right.  
Once such an array of profiles is provided, the app will handle its display automatically

You need to form these two `.js` files in any manner and place it in `./src/data/` for this leaderboard to function as it should.

---

## Function

Displays profiles in sorted list format by default, with 3 options of checking `Current_Assignment`, `Previous_Assignment` and `All_Assignments` markings, with a search option as well that works for both Names and Roll.

---

## Working

How I plan to use it?
Actually I'll provide assignments based on writeups throughout the project. Grading would be between 0 to 10. I would manually edit marks on sheets (maintaining 2 sheets, for profiles and for problems else just append the problem), export it as json, and place it as specified.

## More Logistics

Download two sheets of Problems and Profiles seperately, after editing them. Now run `./run.sh` and enter commit message in between.
You're done!

Hosting requires editing `package.json` by adding

```js
homepage : "https://ba-13.github.io/HackIT_22",
```

Now install

```bash
npm install gh-pages --save-dev
```

Finally, add 2 scripts in `package.json`:

```json
"predeploy" : "npm run build",
"deploy" : "gh-pages -d build",
```
