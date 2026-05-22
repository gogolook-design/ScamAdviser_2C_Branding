# ScamAdviser B2C — Typography

One typeface, many registers. Source: `scamadviser-b2c-brand.html` §04.

## Type Families

### Primary — Inter
The workhorse. Headlines, body, UI, everything that isn't a number.

**Weights used:** 300 (Light), 400 (Regular), 500 (Medium), 600 (Semi), 700 (Bold), 800 (Extra Bold), 900 (Black).

**Fallback:** `-apple-system, sans-serif`

### Data — JetBrains Mono
Scores, stats, timestamps, code, URLs. The receipts.

**Weights used:** 400 (Regular), 500 (Medium), 700 (Bold).

**Fallback:** `'SF Mono', monospace`

## Type Hierarchy

| Level | Font | Weight | Tracking | Line Height | Use |
|---|---|---|---|---|---|
| H1 | Inter | 800 | -3.5% | 0.95 | Hero headlines, section openers |
| H2 | Inter | 500 | -2% | 1.1 | Subheadings, card titles |
| Body | Inter | 400 | normal | 1.5 | Paragraphs, descriptions |
| Data | JetBrains Mono | 700 (numbers) / 400 (labels) | -4% (numbers) / normal | 1.0 | Trust scores, stats, timestamps |

## CSS Tokens

```css
--sans: 'Inter', -apple-system, sans-serif;
--mono: 'JetBrains Mono', 'SF Mono', monospace;
```

## Rules

- Headlines use Inter 800 or 500 — never 400 for a heading.
- All numbers in product UI use JetBrains Mono — never Inter for scores or stats.
- Never use serif, decorative, or condensed faces.
- Lowercase casual headers are encouraged when the context is informal.
