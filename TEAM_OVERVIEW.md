# ScamAdviser B2C — Team Overview

Everything a teammate needs to onboard, navigate, and contribute to the brand guideline + skill pack.

---

## TL;DR

We're pivoting ScamAdviser from a **B2B authority** ("The Advisor") to a **B2C peer-powered ally** ("The Detector"). This repo is the living source of truth for that pivot — a deployed HTML guideline plus three Claude Code skills the team can install locally.

- **Live guideline:** https://gogolook-design.github.io/ScamAdviser_2C_Branding/scamadviser-b2c-brand.html (pw `gogolook2026`)
- **Repo:** https://github.com/gogolook-design/ScamAdviser_2C_Branding
- **Skill pack install:** `./skills/install.sh` (after cloning)

---

## What changed (the pivot)

| | Old (B2B) | New (B2C) |
|---|---|---|
| **Archetype** | The Advisor | The Detector |
| **Tone** | Corporate, polished, advisory | Group-chat energy, peer-powered |
| **Greeting** | "Your anti-scam partner." | "Your digital BS detector." |
| **Verdict** | "This site has a low Trust Score." | "This site failed the vibe check. (12/100)" |
| **Trust model** | Badge of approval | Peer trust — "2,341 people reported this" |
| **Hero red** | Conservative SA Red | Same SA Red, used boldly |

---

## What's in the repo

### 1. The guideline (`scamadviser-b2c-brand.html`)

Single self-contained HTML file — no build step, no dependencies. Includes:

- **Hero** with sticky mini-nav (9 sections)
- **§01 The Shift** — positioning before/after
- **§02 Logo** — `bs/d` mark, 5 variants, favicon, clear space
- **§03 Color** — 30/30/20/20 primary, secondary tier (5 options), 5-band risk ladder
- **§04 Typography** — Inter + JetBrains Mono with full type scale
- **§05 Voice** — tone shifts, do/don't, real voice examples
- **§06 Mood** — three sub-sections:
  - 06a Photography direction
  - 06b Illustration / icon system
  - 06c Data visualization
- **§07 UI Exploration** — 6 actual product surfaces:
  - A Browser extension popup (full red danger state)
  - B Mobile app home (feed + community)
  - C Trust score detail
  - D Share card (social)
  - E Community reports
  - F Safe confirmation
- **§08 Design System** — 12 blocks of tokens & components (buttons, spacing, padding, inputs, radius, motion, elevation, icons, highlight, sound, toast, component anatomy)
- **§09 Taglines** — primary, casual, campaign, community, partner
- **§10 Close** — final hero moment

**Interactive bits:** sound is on by default (toggle bottom-right), buttons play `cue.tap`, counters bump on click, "Back to safety" plays `cue.block`.

### 2. The skill pack (`skills/`)

Three Claude Code skills designed to layer:

```
scamadviser-brand          ← identity (color, voice, logo, taglines)
        ↓
scamadviser-web-ds         ← implementation (tokens, components, motion, sound)
        ↓
scamadviser-brand-review   ← pre-ship compliance check
```

Each skill is a folder with a `SKILL.md` (metadata + entry) plus supporting reference files. The team installs them by copying into `~/.claude/skills/`.

### 3. The motion + sound lab (`motion-sound-lab.html`)

Internal sandbox where motion patterns and sound cues were prototyped before being baked into the main guideline. Kept around for future iteration. Linked from the guideline's footer.

### 4. The original handoff (`project/`)

Earlier draft from a Claude Design export — moodboard images, raw assets, logos. Use the root HTML for current state; this folder is reference only.

---

## How to use the skills

### Skill 1 — `scamadviser-brand` (identity)

**Triggers:** Any ScamAdviser content generation. Writing copy, designing creative, building a landing page, reviewing an existing asset.

**Provides:**
- Brand pillars (Straight-up, Empowering, Sharp, Real, Peer-powered)
- Color philosophy (30/30/20/20)
- Voice rules (lead with verbs, quote the community, never fear-monger)
- Logo usage + minimum sizes
- Tagline system (5 contexts)

**Reference files:** `colors.md`, `voice.md`, `logo.md`, `typography.md`, `taglines.md`.

### Skill 2 — `scamadviser-web-ds` (implementation)

**Triggers:** Building or reviewing any ScamAdviser web UI — browser extension, marketing site, web app, web component.

**Provides:**
- `tokens.json` — single source of truth (DTCG format)
- `tokens.css` — copy-paste-ready CSS variables (`:root { --red: …; … }`)
- `components.md` — buttons, score badge, toast, highlight, counter, input, tag, browser ext
- `motion-sound.md` — three durations, five sound cues, implementation notes
- Hard rules (corner radius 4-step, one primary per surface, risk colors functional only)

**Reference files:** `tokens.json`, `tokens.css`, `components.md`, `motion-sound.md`.

### Skill 3 — `scamadviser-brand-review` (compliance)

**Triggers:** Run after generating any ScamAdviser asset, before shipping.

**Provides:**
- 8-category checklist (~70 checks): Color · Typography · Logo · Voice · Risk Ladder · Design System · Sound · Accessibility
- Iterative pass — fixes issues and re-runs up to 10 times
- Structured verdict block at the end

**Reference files:** `checklist.md`.

---

## Common workflows

### "Write a Black Friday social post for ScamAdviser"

1. Skill `scamadviser-brand` triggers → loads voice + taglines.
2. Generate the post.
3. Skill `scamadviser-brand-review` validates → adjusts if needed.

### "Build the browser extension popup in React"

1. Skill `scamadviser-web-ds` triggers → loads tokens + component spec.
2. Implement using CSS vars from `tokens.css` and patterns from `components.md`.
3. Skill `scamadviser-brand-review` validates → ensures WCAG AA + risk-ladder integrity.

### "Audit our existing landing page for ScamAdviser brand compliance"

1. Skill `scamadviser-brand-review` triggers directly.
2. Runs the 8-category checklist against the live page.
3. Reports FAILs with the exact fix.

---

## Rules you should not break

1. **One primary CTA per surface.** Demote everything else.
2. **Risk-ladder colors are functional only.** Green isn't "growth," red isn't "delta."
3. **Corner radius is 4-step.** Only `0`, `4`, `14`, or `999 px`. No 6 / 8 / 10 / 12.
4. **No fear-mongering.** "You'll lose everything" is FAIL — the brand empowers, never scares.
5. **Casual hero (`your digital bs/detector.`) is never translated.** The cadence is the point.
6. **No cross-brand bleed.** Whoscall green / Gogolook blue / Roo.cash orange / Juji purple / IRIS magenta — keep them out of ScamAdviser surfaces.
7. **Sound is on by default.** Master gain ≤ 0.55. Auto-mute under `prefers-reduced-motion`.
8. **Motion ≤ 320 ms.** No bouncy springs except the toast's 6 px overshoot dampen.

---

## Editing protocol

The HTML guideline is the **source of truth**. The skill pack is a **mirror** of what's documented there. If they disagree, the HTML wins — fix the skill pack.

When you change something in the HTML:

| If you touched… | Update… |
|---|---|
| A color / radius / motion duration / sound cue | `skills/scamadviser-web-ds/tokens.json` + `tokens.css` |
| A component spec | `skills/scamadviser-web-ds/components.md` |
| Voice / tone / tagline / logo rule | `skills/scamadviser-brand/*.md` |
| A compliance rule | `skills/scamadviser-brand-review/checklist.md` |

Bump the `version` field in `tokens.json` for any token change.

---

## Cross-brand isolation (important)

ScamAdviser is **one of five** Gogolook brands. We share a parent but not a palette.

| Brand | Primary | Confusable trigger |
|---|---|---|
| Gogolook | Blue `#0058EA` | If you see blue in a ScamAdviser asset, it's bled in |
| Whoscall | Green `#07B53B` | Often confused — the safe-green `#00A67E` in our risk ladder is functional, not branding |
| **ScamAdviser** | **Red `#CC1417`** | — |
| Roo.cash | Orange | Don't confuse with our `#FF8A00` warning |
| Juji | Purple | — |
| IRIS | Magenta | — |

The `scamadviser-brand-review` skill checks for cross-brand bleed in its Pre-Check.

---

## Deploy

GitHub Pages auto-deploys from `main` branch. Every push that touches `scamadviser-b2c-brand.html` (or any root-level file) goes live in ~60 s at:

https://gogolook-design.github.io/ScamAdviser_2C_Branding/scamadviser-b2c-brand.html

The password gate is client-side only (sessionStorage). Passwords live in the JS at the bottom of the HTML file: `gogolook2026`, `1234`.

---

## Questions

Open an issue on the [repo](https://github.com/gogolook-design/ScamAdviser_2C_Branding/issues) or @ Jason Lin internally.
