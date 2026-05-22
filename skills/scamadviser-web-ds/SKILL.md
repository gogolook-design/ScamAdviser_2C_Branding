---
name: scamadviser-web-ds
description: ScamAdviser B2C web design system — components, tokens, motion, sound, and interaction patterns for the browser extension, marketing site, and web app. Use when building web UI for ScamAdviser. Pairs with the scamadviser-brand skill (identity layer) and scamadviser-brand-review skill (compliance pass).
---

# ScamAdviser B2C Web Design System

You are building product UI for **ScamAdviser** — the consumer-facing scam-detection product owned by Gogolook. Every implementation must use the official tokens and follow the component patterns documented here.

## Layered Skills

| Need | Skill |
|---|---|
| Brand identity, voice, color philosophy | `scamadviser-brand` |
| **Component tokens, CSS variables, motion specs** | **this skill** |
| Pre-ship compliance check | `scamadviser-brand-review` |
| Photography direction | `scamadviser-photography` |
| Illustration / icon / data-viz | `scamadviser-illustration` |

## Quick Reference

- **Design tokens:** [tokens.json](tokens.json) — single source of truth (DTCG-friendly JSON)
- **CSS variables:** [tokens.css](tokens.css) — copy-paste–ready `:root { … }` block
- **Component patterns:** [components.md](components.md)
- **Motion + sound specs:** [motion-sound.md](motion-sound.md)
- **Source of truth:** [`scamadviser-b2c-brand.html`](../../scamadviser-b2c-brand.html) — the living guideline

## Token Usage Rules

### Always reference tokens, never hardcode

```css
/* DO */
color: var(--ink);
background: var(--red);
padding: var(--spacing-md);
border-radius: var(--radius-pill);
transition: transform var(--motion-base);

/* DON'T */
color: #1A1A1A;
background: #CC1417;
padding: 16px;
border-radius: 999px;
transition: transform 200ms cubic-bezier(0.2, 0.8, 0.2, 1);
```

### Token Categories

- **`color.brand.*`** — SA Red, Ink, Warm Grey, Warm White
- **`color.risk.*`** — 5-band risk ladder (functional only)
- **`color.secondary.*`** — Editorial / community palette (never risk states)
- **`font.family.*`** — Inter (UI) · JetBrains Mono (data)
- **`font.size.*` / `font.weight.*`** — type scale
- **`spacing.*`** — 4 px base scale (xs · sm · md · lg · xl · 2xl)
- **`radius.*`** — sanctioned scale (0 · sm · md · pill)
- **`motion.*`** — fast (120 ms) · base (200 ms) · slow (320 ms) + brand easing
- **`elevation.*`** — flat / raised / popover / modal
- **`sound.*`** — hover / tap / tick / safe / block

## Hard Rules

1. **Corner radius is 4-step.** Only `0`, `4 px`, `14 px`, or `999 px` (pill). No 6 / 8 / 10 / 12. If a component doesn't fit, redesign the component.
2. **One primary CTA per surface.** Demote everything else to secondary or ghost.
3. **Risk Ladder colors are functional only.** Never decorate with them.
4. **Brand red on dark cells uses `--signal-red` for text.** SA Red `#CC1417` fails contrast on `#1A1A1A`.
5. **Motion ≤ 320 ms.** No bouncy springs except the toast's 6 px overshoot dampen.
6. **Sound is on by default.** Master gain ≤ 0.55. Auto-mute under `prefers-reduced-motion`.

## Component Quick Index

| Component | Spec |
|---|---|
| Primary button | pill · SA Red · Inter 600 · padding 12/22 · hover lift 1 px + red glow · active scale 0.97 |
| Secondary button | pill · ink outline · transparent · hover invert · active scale 0.97 |
| Ghost button | text only · ink → SA Red on hover · 8 px horizontal padding |
| Danger button | ink fill · → SA Red on hover · plays `cue.block` |
| Score badge | 40 × 40 px · radius 10 · ink text · band color bg |
| Trust score card | 14 px radius · Warm White · ink text · score number in risk-band color |
| Toast | 14 px radius · ink bg · slide-in from right · 6 px overshoot at 70% · 2500 ms auto-dismiss |
| Highlight `<mark>` | SA Red @ 18% bg · 1/4 px padding · 2 px radius · one per paragraph |
| Input | radius 4 · 14/16 padding · 1 px ink border · 2 px SA Red focus outline |
| Counter (peer reports) | JetBrains Mono 700 · counter-bump animation on increment · pairs with `cue.tick` |

Full anatomy + props live in [components.md](components.md).

## Motion Tokens

```
--motion-fast:  120ms cubic-bezier(0.2, 0.8, 0.2, 1)   // hover, tap, toggle
--motion-base:  200ms cubic-bezier(0.2, 0.8, 0.2, 1)   // default transition
--motion-slow:  320ms cubic-bezier(0.4, 0, 0.2, 1)     // layout, modal, page
```

Full motion patterns + keyframes in [motion-sound.md](motion-sound.md).

## Sonic Palette (5 cues)

| Cue | When | Spec |
|---|---|---|
| `hover` | Pointer enters interactive | Sine 2.2 kHz · 22 ms · gain 0.04 · throttle 110 ms · `pointer: fine` only |
| `tap`   | Button press (default) | Sine 1.2 kHz · 40 ms · gain 0.16 |
| `tick`  | Counter increment | Triangle 520 → 380 Hz · 70 ms · gain 0.18 |
| `safe`  | Safe verdict landed | Sine C5 → E5 · 220 ms · gain 0.20 |
| `block` | Danger CTA pressed | Sub-bass thunk + LP noise · 220 ms · gain 0.30 |

Implementation in [motion-sound.md](motion-sound.md). Code reference: the audio engine block at the end of `scamadviser-b2c-brand.html`.

## Accessibility Floor

- WCAG AA — body ≥ 4.5:1, large ≥ 3:1.
- Score-badge text uses **ink**, not white, on warm bands (`#FF8A00 / #FF6712 / #63B100`).
- Color is never the only indicator of state — pair with text and icon.
- Focus visible on every interactive element (2 px SA Red outline, 3 px offset is the default).
- Animations respect `prefers-reduced-motion`. Sound auto-mutes under the same.

## Pre-Ship Output Checklist

- [ ] Every value comes from `tokens.json` / `tokens.css` — no inline hex / px / ms.
- [ ] Corner radii are 0 / 4 / 14 / 999 only.
- [ ] One primary CTA per surface.
- [ ] Risk-ladder colors only on risk states.
- [ ] SA Red on dark surfaces uses `--signal-red` for text.
- [ ] Motion within the three durations.
- [ ] Sound cues pulled from the 5-cue palette, master ≤ 0.55.
- [ ] WCAG AA contrast on the actual computed background.
- [ ] Run `scamadviser-brand-review` skill before shipping.

## Out of Scope — Escalate to Humans

- New design tokens or radius steps.
- New sound cues outside the 5-cue palette.
- Sub-brand or cross-brand visual systems.
- Final approval on any public-facing UI.
