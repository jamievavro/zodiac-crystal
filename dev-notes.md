# Dev Notes — Zodiac Crystal Guide

Notes for working on this project with Claude via AI-Prowler.

---

## Working in This Directory

Claude has read + write access to:
`C:\Users\Kayla\Documents\Zodiac-crystals-app\`

### How to make changes safely

1. **Before big edits** — always backup first:
   - Tell Claude: "Back up zodiac-crystals.html before we start"
   - Claude runs: copy_to_backup()

2. **For small targeted edits** — use str_replace_in_file:
   - Claude finds the exact text and replaces just that section
   - Much faster than rewriting the whole 1.2MB file
   - Example: "Change the Aries crystal description"

3. **For big structural changes** — edit in sandbox then sync:
   - Claude edits in the Claude.ai sandbox (/mnt/user-data/outputs/)
   - Then writes a Python sync script to copy it here
   - Run the script from your machine

4. **After finishing edits** — reindex:
   - Tell Claude: "Reindex the zodiac app file"
   - Claude runs: reindex_file()

---

## File Size Warning

`zodiac-crystals.html` is ~1.2MB — all the crystal photos are embedded as
base64 inside the file. This is normal and intentional (single-file = no dependencies).

AI-Prowler write_file tool has a content size limit, so for whole-file rewrites
we use a Python sync script instead of passing the content directly.

---

## Key JS Data Objects (inside zodiac-crystals.html)

| Variable | What it is |
|---|---|
| ZODIAC | 12 sign objects with name, element, dates, traits, crystals, meanings |
| CRYSTAL_MEANINGS | Per-sign meanings for each crystal |
| WELLNESS | Per-sign placement, healing, balance, yoga, affirmation |
| YOGA_POSES | 52 poses with SVG, Sanskrit name, steps, benefits, duration |
| BODY_DIAGRAMS | 12 SVG body diagrams showing crystal placement points |
| SPREADS | 4 tarot spread definitions |
| DECK | 78 tarot cards (built dynamically from MAJOR + SUITS + RANKS) |
| PHOTOS | 25 crystal photos (10 real JPEG + 15 generated PNG, base64) |
| CDESC | Generic crystal descriptions (fallback) |

---

## Key JS Functions

| Function | What it does |
|---|---|
| showPage(name, btn) | Switches main nav tab |
| buildGrid() | Renders 12 zodiac cards on Tab 1 |
| openModal(z) | Opens sign detail modal (Crystals / Horoscope / About tabs) |
| stab(t) | Switches modal tabs (m, h, a) |
| buildHealingPage() | Builds Crystal Healing tab on first visit |
| renderHealingSign(z) | Renders full healing content for selected sign |
| togglePose(card) | Expands/collapses yoga pose card |
| callGemini(prompt, onSuccess, onError) | Calls Google Gemini free API |
| promptForKey(callback) | Shows API key entry overlay |
| loadHoro(z) | Loads AI horoscope for a sign |
| getAIReading() | Gets AI tarot reading for drawn cards |
| drawCards() | Shuffles and deals tarot cards |
| fillPhoto(container, name) | Looks up and renders crystal photo |

---

## Bug History

### Fixed: SyntaxError "Invalid or unexpected token" (June 2026)
- **Cause**: BODY_DIAGRAMS SVG strings had literal newline characters inside
  single-quoted JS strings. Browsers reject this even though Node --check missed it
  (Node strips large strings before checking)
- **Fix**: Collapsed all newlines in the BODY_DIAGRAMS block to spaces
- **Lesson**: Always check for `\n` inside single-quoted JS strings after
  adding multi-line SVG/HTML content

### Fixed: Tiger's Eye apostrophe breaking JS (June 2026)
- **Cause**: "Tiger's Eye" has an apostrophe — breaks single-quoted JS strings
- **Fix**: Escaped to `Tiger&#39;s Eye` inside SVG text content

### Fixed: Old API model string (June 2026)
- Changed `claude-sonnet-4-20250514` to `claude-sonnet-4-6`
- Then switched entirely to Google Gemini 2.0 Flash (free)

---

## Common Tasks

**Add a new crystal photo:**
Tell Claude: "Add this photo as [Crystal Name] replacing the generated image"
Upload the cropped photo and Claude will embed it

**Update crystal meaning for a sign:**
Tell Claude: "Update the [Sign] meaning for [Crystal] in CRYSTAL_MEANINGS"

**Add/change a yoga pose:**
Tell Claude: "Update the [Pose Name] in YOGA_POSES with new steps"

**Change colors/styling:**
Tell Claude: "Change the healing page background color to [color]"
Claude uses str_replace_in_file to update just the CSS

**Test for bugs:**
Tell Claude: "Run a bug check on the zodiac app"
Claude reads the file and checks for JS syntax errors, missing data, etc.
