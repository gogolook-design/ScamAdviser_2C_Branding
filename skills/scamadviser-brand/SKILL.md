---
name: scamadviser-brand
description: ScamAdviser B2C brand — visual identity, voice, color, typography, logo, taglines. Use when generating any ScamAdviser consumer-facing content: marketing copy, product UI, web pages, social posts, campaign creatives, browser extension UI, or mobile app screens. Also use when reviewing existing ScamAdviser assets for brand compliance.
---

# ScamAdviser B2C Brand Identity

You are working on brand assets for **ScamAdviser** — the consumer-facing scam detection product owned by Gogolook. ScamAdviser is pivoting from a B2B authority ("The Advisor") to a B2C peer-powered ally ("The Detector"). Every output must reflect this new identity. Read the relevant supporting files before generating.

## Quick Reference

- **Primary color:** `#CC1417` (ScamAdviser Red — 20% of composition, CTAs + alerts + hero moments)
- **Canvas:** `#EFEBE2` (Warm Grey — 30%, page backgrounds)
- **Surface:** `#FFFFF8` (Warm White — 30%, cards + modals)
- **Anchor:** `#1A1A1A` (Ink Black — 20%, body text + borders)
- **Headings font:** Inter 800, -3.5% tracking
- **Body font:** Inter 400, 1.5 line-height
- **Data font:** JetBrains Mono (scores, stats, code)
- **Hero tagline:** Check Before You Trust. — *Don't get scammed. Get ScamAdviser!*
- **Casual hero (alt):** your digital bs/detector.
- **Brand feeling:** Straight-up, empowering, sharp, real, peer-powered
- **Tone:** Fast, high-signal, group-chat energy
- **Never:** Fear-monger, sound institutional, use jargon, moralize, explain tech unprompted

## The Shift

| | Was (B2B) | Now (B2C) |
|---|---|---|
| **Archetype** | The Advisor | The Detector |
| **Tone** | Corporate, institutional | Group-chat energy, zero buzzwords |
| **Trust model** | Badge of approval | Peer trust — people trust people |
| **Greeting** | "Your anti-scam partner." | "Your digital BS detector." |
| **Alert** | "Please verify links before interacting." | "Heads up: new phishing drop. Check that link before you tap." |
| **Verdict** | "This site has a low Trust Score." | "This site failed the vibe check. (12/100)" |

## Personality Pillars

1. **Straight-up** — If it looks like a rug pull, we call it a rug pull. No corporate hedge.
2. **Empowering** — We hand you the receipts. You make the call.
3. **Sharp** — Catches the scam before you click the link.
4. **Real** — Sounds like a person, not a 90-page PDF.
5. **Peer-powered** — Millions of users. Institutions can't keep up with that.

## Before You Generate

1. Confirm this is **ScamAdviser B2C** — not Gogolook parent brand, Whoscall, or another sub-brand.
2. Read the supporting files for your output type:
   - Color system: [colors.md](colors.md)
   - Voice and copy rules: [voice.md](voice.md)
   - Logo usage: [logo.md](logo.md)
   - Typography: [typography.md](typography.md)
   - Tagline system: [taglines.md](taglines.md)
3. For photography direction, use the `scamadviser-photography` skill.
4. For icon/illustration direction, use the `scamadviser-illustration` skill.

## Core Rules

### Color
- Warm Grey `#EFEBE2` is the canvas — 30% of every composition.
- Warm White `#FFFFF8` is the surface — cards, modals, overlays — 30%.
- ScamAdviser Red `#CC1417` is the focus — CTAs, alerts, brand hero moments — 20%. No tints.
- Ink Black `#1A1A1A` is the anchor — body text, borders, dark UI — 20%.
- Secondary colors (Slate, Amber, Plum, Forest, Trust Blue) are for editorial/community only — **never** risk states.
- Risk Ladder colors are functional product colors only — never decorative.

### Typography
- **H1:** Inter 800, -3.5% tracking.
- **H2:** Inter 500, -2% tracking.
- **Body:** Inter 400, 1.5 line-height.
- **Data/scores:** JetBrains Mono 700 for numbers, 400 for labels.
- System fallback: `-apple-system, sans-serif` / `'SF Mono', monospace`.
- Never use serif, decorative, or condensed faces.

### Logo
- **Mark:** `bs/d` — the slash is always skewed 10deg.
- **Contexts:** Primary light, Alert red, Reverse dark, Full wordmark, Favicon.
- **Favicon:** Red square `#CC1417` with white slash, 16–1024px.
- Min clear space = cap-height of the slash.
- Digital min: 24px mark height. Print min: 8mm.
- Never: gradients, rotation beyond 10deg, shadow/outline/container, red slash on red bg.

### Voice
- Lead with verbs. Use concrete numbers. Quote the community.
- Be self-aware about AI — name it as "Sharp," not a buzzword.
- Lowercase casual headers when the context is chill.
- Never fear-monger, use jargon, sound institutional, explain tech unprompted, or moralize.

### Risk Ladder (product-functional only)

| Score | Label | Hex | Verdict |
|---|---|---|---|
| 0–39 | Dangerous | `#EE3E41` | Don't click |
| 40–59 | Likely Dangerous | `#FF6712` | Sketchy — back out |
| 60–69 | Warning | `#FF8A00` | Proceed carefully |
| 70–89 | Likely Safe | `#63B100` | Probably fine |
| 90–100 | Safe | `#00A67E` | Vibe check passed |

Risk Ladder colors are never used for non-risk data. Green means "safe," not "growth." Red means "danger," not "delta."

### Taglines

| Context | Line |
|---|---|
| Hero (primary) | Check Before You Trust. |
| Hero sub | Don't get scammed. Get ScamAdviser! |
| Hero (casual alt) | your digital bs/detector. |
| Campaign hook | Catch what you'd miss. |
| Community/peer | Millions of users. One group chat. |
| Product caption | Paste a link. Get the receipts. |
| Partner/press | Peer-powered scam detection, backed by AI. |

Never translate the casual hero (`your digital bs/detector.`) — the cadence is the point. The primary hero (`Check Before You Trust.`) may be translated for regional markets.

## CSS Custom Properties

```css
:root {
  --red: #CC1417;
  --signal-red: #EE3E41;
  --ink: #1A1A1A;
  --black: #0A0A0A;
  --warm-grey: #EFEBE2;
  --paper: #EFEBE2;
  --warm-white: #FFFFF8;
  --white: #FFFFF8;
  --cream: #D9CFB8;
  --plum: #6B3F5E;
  --gray: #404040;
  --french-gray: #BABCC7;
  --teal: #00A68D;
  --orange: #FF8A00;
  --warn-orange: #FF6712;
  --safe-green: #00A67E;
  --likely-safe: #63B100;
  --sans: 'Inter', -apple-system, sans-serif;
  --mono: 'JetBrains Mono', 'SF Mono', monospace;
}
```

## Design System Tokens

### Buttons
- Shape: pill (radius 999px). Transition: 200ms cubic-bezier(0.2, 0.8, 0.2, 1). Hover lifts 1px (primary).
- **Primary:** bg SA Red, text white. One per screen.
- **Secondary:** 1px ink outline, transparent bg.
- **Ghost:** text only, red on hover.
- **Danger:** bg ink, SA Red on hover.
- Sizes: SM (8/16 padding, 12px), MD (12/22, 14px), LG (16/32, 16px).

### Spacing
- Multiples of 4px. Stop inventing.

### Corner Radius

| Element | Radius |
|---|---|
| Buttons/pills | 999px |
| Cards/modals | 14px |
| Score badges | 10px |
| Toasts | 14px |
| Inputs | 8px |
| Highlight marks | 2px |
| Favicon | 12px |

### Highlight
- SA Red @ 18% behind text, 1/4px padding, 2px radius.
- One highlight per paragraph — more is shouting.
- Solid red reserved for the one term that must land.

### Sound Cues
- On by default. Master capped at 0.55. Auto-mute under `prefers-reduced-motion`.
- `cue.hover`: sine 2.2kHz, 22ms, gain 0.04, pointer:fine only.
- `cue.tap`: sine 1.2kHz, 40ms. Every button press.
- `cue.tick`: triangle 520→380Hz, 70ms. Counter bumps.
- `cue.safe`: two-note sine C5→E5, 220ms. Safe verdict.
- `cue.block`: sub-bass thunk + noise tail, 220ms. Danger CTA.

### Motion
- Default: 200ms ease. No bouncy springs except toast overshoot (6px dampen at 70%, 320ms).
- Toast: slide from right, hold 2.5s, fade out.
- Counter bump: scale pulse on peer-report increments.

## Output Checklist

Run before delivering any ScamAdviser asset:

- [ ] ScamAdviser Red `#CC1417` is present for CTAs/alerts/hero moments.
- [ ] Color proportions respect 30/30/20/20 (grey/white/red/ink).
- [ ] Headings use Inter 800 or 500. Data uses JetBrains Mono.
- [ ] Risk Ladder colors are only used for risk states — never decorative.
- [ ] Tone is fast, high-signal, peer-powered — never institutional or fear-based.
- [ ] No Gogolook parent brand or other sub-brand voice/palette mixed in.
- [ ] Logo mark uses correct context and clear space.
- [ ] Buttons are pills, one primary per screen.

## Out of Scope — Escalate to Humans

- Brand strategy and positioning shifts.
- New brand identity or sub-brand creation.
- Cross-brand campaigns mixing ScamAdviser with Gogolook/Whoscall visual systems.
- Final approval on any public-facing output.
