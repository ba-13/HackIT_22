#!/bin/bash

cd ./src/data/
python3 data_transform.py
git status
git add -A
read commit_message
git commit -m "$commit_message"
git push origin leaderboard
npm run deploy
