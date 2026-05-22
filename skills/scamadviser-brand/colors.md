# ScamAdviser B2C — Color System

Two tiers. Primary carries the brand across every surface. Secondary is for editorial and community only — never risk states. Source: `scamadviser-b2c-brand.html` §03.

## Primary Tier (30/30/20/20)

### Warm Grey — Canvas (30%)

| Token | Hex | Usage |
|---|---|---|
| `--warm-grey` / `--paper` | `#EFEBE2` | Page bg, section surfaces, breathing room. Never fill CTAs or alerts. |

### Warm White — Surface (30%)

| Token | Hex | Usage |
|---|---|---|
| `--warm-white` / `--white` | `#FFFFF8` | Cards, modals, overlays. Reads as white — barely-there warmth. |

### ScamAdviser Red — Focus (20%)

| Token | Hex | Usage |
|---|---|---|
| `--red` | `#CC1417` | CTAs, alerts, brand hero moments. One red family only — no tints. |

### Ink Black — Anchor (20%)

| Token | Hex | Usage |
|---|---|---|
| `--ink` | `#1A1A1A` | Body text, borders, dark UI, structural weight. |
| `--black` | `#0A0A0A` | Deep black for maximum contrast contexts. |

## Secondary Tier (editorial/community only)

Five options explored — pick one per campaign/context. Never mix with risk states.

| Option | Name | Hex | Good for |
|---|---|---|---|
| A | Slate | `#4A5568` | Data, editorial |
| B | Amber | `#B45309` | Campaign, social |
| C | Plum | `#6B3F5E` | Community, peer |
| D | Forest | `#2D4A3E` | Trust, premium |
| E | Trust Blue | `#317BB8` | Community (original brand secondary) |

**Guardrail:** Whichever secondary is chosen stays out of the red → orange → green → teal risk ladder entirely.

## Supporting Neutrals

| Token | Hex | Usage |
|---|---|---|
| `--cream` | `#D9CFB8` | Muted backgrounds, dividers |
| `--gray` | `#404040` | Secondary text |
| `--french-gray` | `#BABCC7` | Borders, inactive states |

## Risk Ladder — Product Color Semantics

These colors are functional only — never decorative, never editorial.

| Score | Label | Token | Hex | Verdict |
|---|---|---|---|---|
| 0–39 | Dangerous | `--signal-red` | `#EE3E41` | Don't click |
| 40–59 | Likely Dangerous | `--warn-orange` | `#FF6712` | Sketchy — back out |
| 60–69 | Warning | `--orange` | `#FF8A00` | Proceed carefully |
| 70–89 | Likely Safe | `--likely-safe` | `#63B100` | Probably fine |
| 90–100 | Safe | `--safe-green` | `#00A67E` | Vibe check passed |

### Risk Ladder Do / Don't

**Do:**
- Use risk-ladder colors exclusively for trust score states.
- Color the score number by its band — everything else stays neutral.

**Don't:**
- Use risk-ladder colors for non-risk data. Green ≠ "growth." Red ≠ "delta."
- Substitute SA Red `#CC1417` for Signal Red `#EE3E41` in risk contexts — they serve different roles.

## Color Proportions

Every composition should respect:

| Color | Proportion | Role |
|---|---|---|
| Warm Grey | **30%** | Canvas — background surfaces |
| Warm White | **30%** | Surface — cards, modals, content areas |
| ScamAdviser Red | **20%** | Focus — CTAs, alerts, brand moments |
| Ink Black | **20%** | Anchor — text, borders, dark UI |
