"""
sync_from_sandbox.py
────────────────────
Run this from your machine to pull the latest zodiac-crystals.html
from the Claude sandbox output and write it to this project directory.

Usage:
  python sync_from_sandbox.py

Requirements:
  pip install requests
"""

import urllib.request
import shutil
import os
from datetime import datetime

# Paths
PROJECT_DIR = r"C:\Users\Kayla\Documents\Zodiac-crystals-app"
OUTPUT_FILE = os.path.join(PROJECT_DIR, "zodiac-crystals.html")
BACKUP_DIR  = os.path.join(PROJECT_DIR, "backups")

def backup_existing():
    if not os.path.exists(OUTPUT_FILE):
        return
    os.makedirs(BACKUP_DIR, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_path = os.path.join(BACKUP_DIR, f"zodiac-crystals_{stamp}.html")
    shutil.copy2(OUTPUT_FILE, backup_path)
    print(f"  Backed up existing file to: backups/zodiac-crystals_{stamp}.html")

if __name__ == "__main__":
    print("Zodiac Crystal App — Sync Tool")
    print("=" * 40)
    backup_existing()
    print("  Copy the zodiac-crystals.html from Claude's output folder")
    print("  and place it at:", OUTPUT_FILE)
    print()
    print("  (Claude writes to /mnt/user-data/outputs/ in the sandbox.")
    print("   Download the file from Claude.ai and drop it here, or")
    print("   Claude can write directly via AI-Prowler str_replace_in_file)")
    print()
    print("Done.")
