# ScamAdviser B2C Brand Guideline

This repo contains the **ScamAdviser B2C brand guideline** — a single-page HTML prototype that defines the brand's visual identity, voice, color system, typography, and UI patterns for the consumer-facing pivot.

## Purpose

This is a **reference guideline**, not production code. It will be used to generate:

1. **ScamAdviser brand guideline skill** — brand identity, voice, personality, taglines
2. **ScamAdviser web design system skill** — web components, browser extension UI, score cards
3. **ScamAdviser Android app design system skill** — mobile patterns, phone UI, material adaptations
4. **ScamAdviser iOS app design system skill** — mobile patterns, phone UI, HIG adaptations

## File Structure

```
scamadviser-b2c-brand.html        ← Primary guideline (latest, deployed version)
project/
  ScamAdviser B2C Brand Guideline.html  ← Earlier draft from Claude Design export
  assets/
    sa-logo.png                   ← Full color logo (dark bg variant exists as sa-logo-white.png)
    sa-logo-white.png             ← White logo for dark backgrounds
    moodboard/                    ← 8 moodboard images
  uploads/                        ← Raw pasted images from design sessions
```

## Brand Identity at a Glance

### The Shift (B2B → B2C)

- **Was**: "The Advisor" — corporate, institutional trust, badge of approval
- **Now**: "The Detector" — group-chat energy, zero buzzwords, peer trust
- **Hero tagline**: "your digital bs/detector."
- **Personality pillars**: Straight-up, Empowering, Sharp, Real, Peer-powered

### Color System

#### Primary Tier (30/30/20/20 ratio)

| Role       | Name             | Hex       | Usage                              |
|------------|------------------|-----------|-------------------------------------|
| 30% Canvas | Warm Grey        | `#EFEBE2` | Page bg, section surfaces           |
| 30% Surface| Warm White       | `#FFFFF8` | Cards, modals, overlays             |
| 20% Focus  | ScamAdviser Red  | `#CC1417` | CTAs, alerts, brand hero moments    |
| 20% Anchor | Ink Black        | `#1A1A1A` | Body text, borders, dark UI         |

#### Secondary Tier (editorial/community only — never risk states)

Five options explored, not yet finalized:
- Option A: Slate `#4A5568` — data, editorial
- Option B: Amber `#B45309` — campaign, social
- Option C: Plum `#6B3F5E` — community, peer (currently used in prototype as `--trust-blue`)
- Option D: Forest `#2D4A3E` — trust, premium
- Option E: Trust Blue `#317BB8` — original brand secondary, community

#### Risk Ladder (functional product colors only)

| Score   | Label            | Color     | Hex       |
|---------|------------------|-----------|-----------|
| 0–39    | Dangerous        | Signal Red| `#EE3E41` |
| 40–59   | Likely Dangerous | Warn Orange| `#FF6712`|
| 60–69   | Warning          | Orange    | `#FF8A00` |
| 70–89   | Likely Safe      | Likely Safe| `#63B100`|
| 90–100  | Safe             | Safe Green| `#00A67E` |

### Typography

- **Primary**: Inter (weights: 300, 400, 500, 600, 700, 800, 900)
- **Data/Code**: JetBrains Mono (weights: 400, 500, 700)
- **Hierarchy**:
  - H1: Inter 800, -3.5% tracking
  - H2: Inter 500, -2% tracking
  - Body: Inter 400, 1.5 line-height
  - Data: JetBrains Mono
- **System stack fallback**: `-apple-system, sans-serif` / `'SF Mono', monospace`

### Logo & Campaign Mark

Two distinct marks, two distinct jobs. **Don't substitute.**

#### The logo — ScamAdviser wordmark
- Official identity. Files: `project/assets/sa-logo.png` + `sa-logo-white.png`.
- Variants: Primary light · Reverse dark · Reverse brand red.
- Clear space = cap-height of "S." Min 96 px digital / 24 mm print.
- Used on: app stores, legal footers, partner decks, press, splash screens.
- Never rotate, skew, stretch, recolor, shadow, glow, or tile.

#### The campaign mark — `bs/d`
- **Not the logo.** Campaign treatment built for the B2C launch.
- Slash is the signal, always skewed 10°.
- Used for: posters, social cards, headline lockups, app onboarding splash, editorial moments.
- A campaign-era favicon exists (red square `#CC1417` with white skewed slash) — launch tab icon only, not the permanent product favicon.
- Min clear space = cap-height of the slash ("x"). Min 24px digital / 8mm print.
- Never: used as the logo in app stores / legal footers / partner badges. No gradients, rotation beyond 10°, shadow/outline/container, red slash on red bg.

### Voice & Tone

- **Tone**: Fast, high-signal, group-chat energy
- **Do**: Lead with verbs, use concrete numbers, quote the community, be self-aware about AI
- **Don't**: Fear-monger, use jargon, sound institutional, explain tech unprompted, moralize

### Tagline System

| Context         | Line                                              |
|-----------------|----------------------------------------------------|
| Hero            | your digital bs/detector.                          |
| Campaign hook   | Catch what you'd miss.                             |
| Community/peer  | Millions of users. One group chat.                 |
| Product caption | Paste a link. Get the receipts.                    |
| Partner/press   | Peer-powered scam detection, backed by AI.         |

### UI Patterns (6 touchpoints)

- **A — Browser extension popup**: Full red state on flagged domains
- **B — Mobile app home**: Recent checks feed, peer signal, low friction
- **C — Trust score detail**: Facts-based breakdown, no fear
- **D — Share card (social)**: Shareable receipts for group chats
- **E — Community reports**: Peer trust feed with verdicts
- **F — Safe confirmation**: Low-key green, minimal celebration

## CSS Custom Properties Reference

```css
:root {
  /* Primary */
  --red: #CC1417;
  --signal-red: #EE3E41;
  --ink: #1A1A1A;
  --black: #0A0A0A;
  --warm-grey: #EFEBE2;
  --paper: #EFEBE2;
  --warm-white: #FFFFF8;
  --white: #FFFFF8;

  /* Secondary / Editorial */
  --cream: #D9CFB8;
  --plum: #6B3F5E;
  --plum-light: rgba(107,63,94,0.12);
  --gray: #404040;
  --french-gray: #BABCC7;

  /* Risk Ladder (product-functional only) */
  --teal: #00A68D;
  --orange: #FF8A00;
  --warn-orange: #FF6712;
  --safe-green: #00A67E;
  --likely-safe: #63B100;

  /* Type */
  --sans: 'Inter', -apple-system, sans-serif;
  --mono: 'JetBrains Mono', 'SF Mono', monospace;
}
```

## Working With This Repo

- The primary file is `scamadviser-b2c-brand.html` at root — this is the latest version
- `project/ScamAdviser B2C Brand Guideline.html` is an earlier draft; refer to root file for current state
- The login gate is session-based (sessionStorage) — passwords are in the HTML JS
- The page has a sticky mini-nav with 9 sections: Hero, The Shift, Logo, Color, Type, Voice, Mood, UI, Taglines
- Moodboard section (06) is currently a "Coming soon" placeholder
