@echo off
echo ================================
echo  Zodiac Crystal App - Git Push
echo ================================
echo.

cd /d "C:\Users\Kayla\Documents\Zodiac-crystals-app-work-v0\zodiac-crystal"

echo Step 1: Renaming zodiac-crystals.html to index.html...
if exist "zodiac-crystals.html" (
    copy "zodiac-crystals.html" "index.html"
    echo Done.
) else (
    echo index.html already exists, skipping rename.
)

echo.
echo Step 2: Adding files to git...
git add .

echo.
echo Step 3: Committing...
git commit -m "Rename to index.html for GitHub Pages"

echo.
echo Step 4: Pushing to GitHub...
git push

echo.
echo ================================
echo Done! Your app will be live at:
echo https://jamievavro.github.io/zodiac-crystal
echo (wait 1-2 minutes then refresh)
echo ================================
echo.
pause
