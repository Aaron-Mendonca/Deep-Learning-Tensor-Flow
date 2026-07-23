@echo off

cd /d "C:\Users\mendo\OneDrive\Aaron Personal\SEM V\DL Practical"

:loop

git add .

git diff --cached --quiet

if errorlevel 1 (
    git commit -m "Auto backup"
    git push
)

timeout /t 60 >nul

goto loop