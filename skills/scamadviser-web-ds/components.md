# ScamAdviser Web Components

> Source of truth: [`scamadviser-b2c-brand.html`](../../scamadviser-b2c-brand.html) §07 (UI Exploration) + §08 (Design System).
> Every value below is also in [tokens.json](tokens.json) — reference tokens, not literals.

## Buttons (`.sa-btn`)

Pill shape, single primary per surface.

### Variants

| Variant | Spec | Use |
|---|---|---|
| **Primary** | bg `--red` · text `--warm-white` · radius `--radius-pill` | One per surface — the single action you want users to take |
| **Secondary** | 1 px `--ink` outline · transparent · text `--ink` → invert on hover | Supporting choice |
| **Ghost** | text only · `--ink` → `--red` on hover · 8 px horizontal padding | Dismiss / skip / tertiary |
| **Danger** | bg `--ink` → `--red` on hover · text `--warm-white` | Destructive confirm — plays `cue.block` on press |

### Sizes

| Size | Padding (v / h) | Font |
|---|---|---|
| SM | 8 / 16 | Inter 600 · 12 px |
| MD (default) | 12 / 22 | Inter 600 · 14 px |
| LG | 16 / 32 | Inter 600 · 16 px |

### Interactions

- **Hover (Primary):** `translateY(-1px)` + `box-shadow: 0 6px 18px rgba(204,20,23,0.28)` over `--motion-base`.
- **Active:** `transform: translateY(0) scale(0.97)` + shadow removed.
- **Arrow `→`:** nudges 3 px right on hover (`transition: transform var(--motion-base) var(--ease-brand)`).
- **Sound:** plays `cue.tap` on `pointerdown` when sound enabled. Danger variant plays `cue.block` instead.

```html
<button class="sa-btn primary">Check this link <span class="arrow">→</span></button>
<button class="sa-btn secondary">Why?</button>
<button class="sa-btn ghost">Skip <span class="arrow">→</span></button>
<button class="sa-btn danger">Block site</button>
```

---

## Score Badge (`.score-badge`)

40 × 40 px square, radius 10 px, ink text on band color (NOT white — fails AA on warm bands).

```html
<div class="score-badge danger">12</div>   <!-- 0–39 -->
<div class="score-badge warn">58</div>     <!-- 40–69 -->
<div class="score-badge likely">76</div>   <!-- 70–89 -->
<div class="score-badge safe">94</div>     <!-- 90–100 -->
```

Backgrounds map to `--risk-*` tokens.

---

## Trust Score Card

Anatomy: **data + frame + action**.

- **Frame:** `--warm-white` bg · `--radius-md` (14 px) · `--elevation-1`.
- **Data:** Score number in JetBrains Mono 700, color = risk-band color. Denominator `/100` in opacity 0.45.
- **Verdict line:** Inter 700, ink color. ("Failed the vibe check." / "You're good.")
- **Action:** primary CTA + secondary outline.

Pairs with `cue.detect` (on first render of a dangerous result) or `cue.safe` (on safe verdict).

---

## Toast (`.ds-toast`)

Slide-in feedback from the right edge.

- Position: `top: 14px; right: 14px;` inside its stage.
- Frame: `--ink` bg, `--warm-white` text, `--radius-md`, `--elevation-2`.
- Padding: 12 / 16.
- Animation: `translateX(140%)` → `translateX(-6px)` at 70% → `translateX(0)` over `--motion-slow` (320 ms).
- Auto-dismiss after 2500 ms; fade-out.
- Reduced-motion: skips overshoot.
- Sound: pairs with `cue.tap`.

```css
@keyframes dsToastIn {
  0%   { transform: translateX(140%); opacity: 0; }
  70%  { transform: translateX(-6px); opacity: 1; }
  100% { transform: translateX(0);    opacity: 1; }
}
```

---

## Highlight (`<mark>`)

Inline emphasis — SA Red @ 18% behind the phrase.

```html
<p>Domain registered <mark>6 days ago</mark> and 2,341 flags.</p>
<p><mark class="solid">Don't tap that link.</mark></p>
```

- `mark`: bg `var(--highlight-fill)`, padding `var(--highlight-padding)`, radius `var(--highlight-radius)`.
- `mark.solid`: bg `var(--red)`, text `var(--warm-white)` — reserved for the moment that has to land.
- **One highlight per paragraph.** More than that is shouting.

---

## Counter (`.counter`)

For peer-report increments (social card, community header, bento bar chart).

- Style: JetBrains Mono 700, `--fs-2xl`+, ink color.
- **Bump animation** on every increment (paired with `cue.tick`):

```css
@keyframes counterBump {
  0%   { transform: translateY(0)    scale(1); }
  35%  { transform: translateY(-2px) scale(1.05); }
  100% { transform: translateY(0)    scale(1); }
}
.counter-bump { animation: counterBump 220ms var(--ease-brand); }
```

Apply via JS: remove class → reflow → add class.

---

## Input (`.ds-input`)

- Radius: `--radius-sm` (4 px). Padding: 14 / 16.
- Border: 1 px `rgba(0,0,0,0.18)` resting · 1 px `var(--ink)` on hover · 2 px `var(--red)` outline on focus (3 px offset).
- Font: Inter 400 · 16 px (prevents iOS zoom).
- Placeholder: ink @ 0.62 opacity.

---

## Tag / Verdict Chip

| Class | Background | Text |
|---|---|---|
| `.tag.dd` (scam) | `rgba(238,62,65,0.14)` | `var(--text-dark-red)` `#9A0E10` |
| `.tag.ww` (sus) | `rgba(255,138,0,0.18)` | `var(--text-dark-orange)` `#8A3700` |
| `.tag.ss` (safe) | `rgba(0,166,126,0.16)` | `var(--text-dark-green)` `#005C45` |

Never use Signal Red `#EE3E41` or Safe Green `#00A67E` as text on tints — fails AA. Use the darkened tonal hexes above.

---

## Browser Extension Popup

- Shell: `--warm-white` bg, `--radius-md`, `--elevation-3`, max-width 340 px.
- Header: ink bg, white text, "live check" mono label + headline.
- URL row: monospace, strikethrough on the dangerous domain.
- Score row: 40 px badge + verdict line + score `12/100`.
- Reason list: 3 bullets, ink dots.
- Actions: **Back to safety** (primary, plays `cue.block`) + **Why?** (secondary, plays `cue.tap`).

---

## Risk Ladder (5 bands)

| Score | Band | Token | Verdict copy |
|---|---|---|---|
| 0–39 | Dangerous | `--risk-dangerous` `#EE3E41` | "Don't click." / "Failed the vibe check." |
| 40–59 | Likely Dangerous | `--risk-likely-dangerous` `#FF6712` | "Sketchy — back out." |
| 60–69 | Warning | `--risk-warning` `#FF8A00` | "Proceed carefully." |
| 70–89 | Likely Safe | `--risk-likely-safe` `#63B100` | "Probably fine." |
| 90–100 | Safe | `--risk-safe` `#00A67E` | "Vibe check passed." / "You're good." |

**Hard rule:** these colors are functional only. Never decorate with them, never use for non-risk data.

---

## Layout Grid

- 12-column desktop, 4-column mobile.
- Section padding: `--space-section` (96 px) desktop / `--space-section-mobile` (64 px) mobile.
- Card padding: 24–32 px.
- Field gap: 12 px.

---

## Iconography

- Library: **Phosphor Regular** ([phosphoricons.com](https://phosphoricons.com/))
- Stroke: 2 px, round caps + joins.
- Size: 24 px box · 20 px live area · 2 px padding.
- Color: inherits ink by default. SA Red `--red` for the icon that signals a state.
- No mixed libraries — Phosphor only.
