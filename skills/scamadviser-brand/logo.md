# ScamAdviser B2C — Logo & Campaign Mark

Two distinct marks, two distinct jobs. Don't substitute one for the other.

| | Logo | Campaign mark |
|---|---|---|
| What | ScamAdviser wordmark | `bs/d` |
| Status | Official identity | Tactical campaign treatment |
| File | `project/assets/sa-logo.png` (+ `sa-logo-white.png`) | Built from type — Inter 900, slash skewed 10° |
| Used on | App stores · legal footers · partner decks · press · splash · signature | Posters · social cards · headline lockups · onboarding · editorial |
| Never used in | — | Anywhere a logo is expected |

Source: `scamadviser-b2c-brand.html` §02.

---

## A · The logo — ScamAdviser wordmark

The wordmark is the official mark for ScamAdviser. It's how we sign our name.

### Variants

| Context | Background | File |
|---|---|---|
| **Primary** | `--anti-flash` (light) | `sa-logo.png` |
| **Reverse dark** | `--ink` `#1A1A1A` | `sa-logo-white.png` |
| **Reverse brand red** | `--red` `#CC1417` | `sa-logo-white.png` |

### Clear space + minimums

- Clear space on all four sides = cap-height of the "S."
- **Digital minimum:** 96 px wordmark width.
- **Print minimum:** 24 mm wordmark width.

### Never

- Rotate, skew, stretch, or distort the wordmark.
- Recolor outside the official palette (ink, white, brand red).
- Apply shadow, glow, outline, gradient, 3D, or emboss.
- Add a container box, badge, or "stamp" lockup.
- Tile the wordmark into a pattern.
- Pair with another logo of equal or larger weight (co-branding requires partner-locked spec).

### Where the logo goes

- App stores (iOS / Android / Chrome Web Store) — wordmark + icon.
- Marketing site headers and footers.
- Partner decks, press releases, sponsorship slates.
- Email signatures and document templates.
- Onboarding splash screens (logo first, campaign mark optional).
- Anywhere a user would expect to see "the ScamAdviser logo."

---

## B · The campaign mark — `bs/d`

A campaign treatment for the B2C launch. It's how we sound, made visual. **It is not the logo.**

The slash is the signal — it cuts through the word the way we cut through the noise.

### Variants

| Context | Background | Slash color |
|---|---|---|
| Campaign · light | `--anti-flash` | `--red` |
| Campaign · red | `--red` | `--warm-white` |
| Campaign · dark | `--ink` | `--warm-white` |
| Campaign lockup | `--paper` | `--red` |

### Construction

- Type: Inter 900, lowercase, `letter-spacing: -0.055em`, `line-height: 1`.
- Slash: same weight as the letters, `transform: skewX(-10deg)`, `margin: 0 0.02em`.
- Optional sub-line below: "digital bs detector" in JetBrains Mono uppercase, `0.14em` tracking, 78% opacity.

### Clear space + minimums

- Clear space on all four sides = cap-height of the slash ("x").
- **Digital minimum:** 24 px mark height.
- **Print minimum:** 8 mm mark height.

### Use the campaign mark for

- B2C launch hero posters and social cards.
- Headline lockups in editorial layouts.
- App onboarding splash (paired with the logo, never replacing it).
- Out-of-home, video chrome, motion stings.
- Campaign-era tab icon (red square with skewed white slash, `radius: 12 px`).

### Never use the campaign mark as

- The logo in app stores, partner badges, or legal footers.
- A standalone signature on documents, contracts, or press releases.
- The permanent product favicon (campaign tab icon is for launch only).
- A pattern fill, repeating motif, or wallpaper texture.

### Never

- Gradients on the type or the slash.
- Rotation beyond the built-in 10° of the slash.
- Drop shadow, outline, or container.
- Red slash on a red background (loses the cut).
- Recreating the mark by hand — use the spec.

---

## Decision tree

> "Which mark do I use here?"

```
Are you signing the brand's name on something official?
  YES → Logo (wordmark)
  NO  → continue

Is it a hero, headline, poster, social card, or editorial moment
during the B2C launch campaign?
  YES → Campaign mark (bs/d)
  NO  → continue

Default → Logo (wordmark)
```

When in doubt, use the wordmark. The campaign mark is the special case, not the fallback.
