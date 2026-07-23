@echo off

cd /d "C:\Users\mendo\OneDrive\Aaron Personal\SEM V\DL Practical"

echo Auto GitHub Sync Started...
echo Checking for changes every 60 seconds...
echo.

:loop

echo [%date% %time%] Checking for changes...

git add .

git diff --cached --quiet

if errorlevel 1 (
    echo Changes found. Uploading to GitHub...
    git commit -m "Auto backup"
    git push
    echo Upload complete.
) else (
    echo No changes found.
)

echo.
timeout /t 60

goto loop