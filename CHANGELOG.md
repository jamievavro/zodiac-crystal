# Changelog — Zodiac Crystal Guide

All notable changes to this project are documented here.

---

## [Current] — June 2026

### Added
- 3 main navigation tabs: Zodiac Signs, Crystal Healing, Tarot Reading
- 12 zodiac sign cards with crystal photos and meanings
- CRYSTAL_MEANINGS data — specific explanation of each crystal for each zodiac sign
- WELLNESS data — 12 signs with placement, healing, balance, yoga, affirmation
- 52 yoga poses with SVG stick figure illustrations and step-by-step instructions
- 12 body placement diagrams (SVG human silhouette with chakra points and crystal markers)
- BODY_DIAGRAMS shown in Crystal Healing tab — user sees exactly where to place each crystal
- 78-card tarot deck (22 Major Arcana + 56 Minor Arcana)
- 4 tarot spreads: Daily Card, Past·Present·Future, Love Reading (5 cards), Celtic Cross
- 10 real crystal photos from Jamie's book (Rose Quartz, Carnelian, Citrine, Fluorite, White Quartz, Black Tourmaline, Amethyst, Hematite, Smoky Quartz, Turquoise)
- 15 generated crystal art images for remaining crystals
- AI horoscope (per zodiac sign, generated fresh each day)
- AI tarot reading (personalized to drawn cards and spread)

### Changed
- Switched AI provider from Anthropic API → Google Gemini 2.0 Flash (free tier, no cost)
- Users enter their own free Gemini API key on first use (saved to browser localStorage)
- Added ⚙️ gear icon to update API key anytime
- Fixed SyntaxError: body diagram SVGs had literal newlines inside JS strings — collapsed to spaces
- Updated API model string: claude-sonnet-4-20250514 → claude-sonnet-4-6 (before switch to Gemini)

### Bug Fixes
- Body placement diagrams caused "Uncaught SyntaxError: Invalid or unexpected token" in browser
- Node --check was stripping large strings and missing the multiline string bug
- Tiger's Eye apostrophe breaking SVG strings inside JS — escaped to HTML entity

---

## Todo / Roadmap

- [ ] Add real photos for: Malachite, Moonstone, Labradorite, Lapis Lazuli, Tiger's Eye, Pyrite, Selenite, Red Jasper, Sodalite, Black Obsidian, Red Agate, Aquamarine, Black Kyanite, Bismuth
- [ ] Add PWA manifest (installable as app from browser)
- [ ] Custom domain
- [ ] Google Play Store release via Capacitor
