# ✨ Zodiac Crystal Guide App

A single-file HTML app for zodiac-based crystal healing, yoga poses, body placement guides, and AI-powered tarot readings.

---

## 📁 Project Structure

```
Zodiac-crystals-app/
├── zodiac-crystals.html     ← The full app (single file, open in any browser)
├── zodiac-crystals.html.bak1 ← Auto-backup (safe to delete old ones)
├── README.md                ← This file
├── CHANGELOG.md             ← Version history and what changed
└── dev-notes.md             ← Development notes and bug tracker
```

---

## 🚀 How to Run

Just open `zodiac-crystals.html` in any browser — Chrome, Firefox, Samsung Internet, Safari. No install needed.

---

## 🤖 AI Features (Free)

The horoscope and tarot AI features use **Google Gemini 2.0 Flash** (free tier).

Users need a free Google Gemini API key:
1. Go to https://aistudio.google.com/apikey
2. Sign in with any Google account (free)
3. Click "Create API Key"
4. Paste it into the app when prompted

The key is saved to the user's browser — they only do this once, ever.
**Zero cost to you. Zero cost to users.**

---

## 🧭 3 Main Tabs

| Tab | What it does |
|---|---|
| 🌟 Zodiac Signs | 12 sign cards with crystal photos, meanings, AI horoscope |
| 💎 Crystal Healing | Sign picker → crystal placement + body diagram + yoga poses |
| 🃏 Tarot Reading | 78-card deck, 4 spreads, AI-powered reading |

---

## 📸 Crystal Photos

- 10 real photos from your book (JPEG, embedded as base64)
- 15 generated art images for remaining crystals
- All embedded inside the HTML — no external files needed

---

## 🛠️ Making Changes

For surgical edits (recommended for large files):
- Use AI-Prowler `str_replace_in_file` to change specific sections
- Always run `copy_to_backup` before major changes
- Run `reindex_file` after finishing edits

---

## 📦 Distribution Options

- **Netlify Drop**: drag file to netlify.com/drop → instant live URL
- **GitHub Pages**: free hosting with a permanent URL
- **Gumroad/Etsy**: sell as a digital download
- **Google Play**: wrap with Capacitor for a native Android app

---

## 📋 Known Issues / Todo

- [ ] Add more crystal photos (Malachite, Moonstone, Lapis Lazuli, etc.)
- [ ] PWA manifest for "Add to Home Screen" support
- [ ] Custom domain setup guide
