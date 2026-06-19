@echo off
cd /d "C:\Users\Kayla\Documents\Zodiac-crystals-app-work-v0\zodiac-crystal"
git config user.email "kayla@zodiaccrystals.com"
git config user.name "Kayla"
git add -A
git commit --allow-empty -m "Switch to Groq API - working fix"
git push
echo.
echo DONE! Live in 2 minutes at:
echo https://jamievavro.github.io/zodiac-crystal
echo.
pause
