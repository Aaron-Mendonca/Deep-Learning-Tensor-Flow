@echo off

cd /d "C:\Users\mendo\OneDrive\Aaron Personal\SEM V\DL Practical"

:loop

git add .

git commit -m "Auto backup" 2>nul

git push

timeout /t 300 >nul

goto loop