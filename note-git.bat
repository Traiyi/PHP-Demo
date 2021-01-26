
set /p commit_str=

git pull origin main

git add --all

git commit -m "%commit_str"

git push origin main
