# Leaderboard for HackIt 2022

This is a REACT based codebase that implements a leaderboard for the SnT project HackIt, PClub, IITK.  
Once you receive data of the form of:

```json
// data_profiles.js
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

```json
// data_problems.json
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
