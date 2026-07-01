@echo off
echo ================================
echo  RESTORING ZODIAC CRYSTAL APP
echo ================================
echo.
cd /d "C:\Users\Kayla\Documents\Zodiac-crystals-app-work-v0\zodiac-crystal"
echo Step 1: Checking git status...
git status
echo.
echo Step 2: Adding your good local file...
git add index.html
echo.
echo Step 3: Committing restore...
git commit -m "Restore full app - fix accidental deletion on GitHub"
echo.
echo Step 4: Force pushing to GitHub...
git push origin main --force
echo.
echo ================================
echo DONE! Your app is restored at:
echo https://jamievavro.github.io/zodiac-crystal
echo Wait 2 minutes then check it!
echo ================================
echo.
pause
