---
name: scamadviser-brand-review
description: ScamAdviser B2C brand compliance review. Run after generating any ScamAdviser asset to validate against brand guidelines. Checks colors, typography, logo, voice, risk-ladder integrity, accessibility, and cross-brand isolation. Iterates up to 10 passes to reach full compliance.
disable-model-invocation: true
---

# ScamAdviser B2C Brand Compliance Review

You are reviewing a **ScamAdviser B2C** asset for compliance. Run through the full checklist systematically. For each check, mark **PASS / FAIL / N/A** with a brief explanation. If any check fails, fix the issue and re-run.

## Review Process

1. Read the full checklist in [checklist.md](checklist.md).
2. Evaluate the asset against each criterion.
3. Report results with PASS / FAIL / N/A per item.
4. If any FAIL: fix the issues, then re-review (up to 10 iterations).
5. Stop when all checks pass **or** after 10 iterations, whichever comes first.

## Quick Pre-Check (3 questions)

Before the detailed review, answer these. If any answer is unclear or wrong, the asset needs fundamental rework before detailed review.

1. **Does it feel like ScamAdviser?** — fast, high-signal, group-chat energy, peer-powered. Not institutional, not fear-based, not preachy.
2. **Could it be confused with a sibling brand?** — Gogolook (blue), Whoscall (green), Roo.cash (orange), Juji (purple), IRIS (magenta). If yes, the palette or voice has bled in. FAIL.
3. **Does it empower or scare the user?** — must empower ("you've got receipts"). Fear-mongering ("you'll lose everything") = immediate FAIL.

## Review Categories

Full detail in [checklist.md](checklist.md). The eight categories:

### 1. Color (30/30/20/20)
- Warm Grey `#EFEBE2` canvas present and ~30%? Warm White `#FFFFF8` surface ~30%? ScamAdviser Red `#CC1417` for focus moments ~20%? Ink `#1A1A1A` anchor ~20%?
- Secondary colors used **only** for editorial/community? Never in risk states?
- Risk Ladder colors (`#EE3E41` / `#FF6712` / `#FF8A00` / `#63B100` / `#00A67E`) only for product-functional risk indicators, never decorative?

### 2. Typography
- H1: Inter 800, −3.5% tracking? H2: Inter 500, −2% tracking? Body: Inter 400, 1.5 line-height?
- Data/scores use JetBrains Mono 700 (numbers) / 400 (labels)?
- No serif, decorative, or condensed faces?

### 3. Logo (`bs/d` mark)
- Slash skewed 10°? Clear space = cap-height of the slash? Min 24 px digital / 8 mm print?
- Correct variant for context (Primary light / Alert red / Reverse dark / Wordmark / Favicon)?
- No gradients, rotation beyond built-in 10°, shadow/outline/container, red slash on red bg?

### 4. Voice & Copy
- Leads with verbs? Concrete numbers? Quotes the community?
- Group-chat energy, not institutional?
- No fear-mongering, jargon, or unsolicited tech explanation?
- "ScamAdviser" spelled correctly (one word, capital S+A — not ScamAdvisor, scam adviser, Scam-Adviser)?
- Casual hero (`your digital bs/detector.`) never translated? Primary hero (`Check Before You Trust.`) may be translated.
- Sibling-brand names kept distinct?

### 5. Risk Ladder Integrity
- Score 0–39 = Dangerous `#EE3E41` "Don't click"?
- Score 40–59 = Likely Dangerous `#FF6712` "Sketchy — back out"?
- Score 60–69 = Warning `#FF8A00` "Proceed carefully"?
- Score 70–89 = Likely Safe `#63B100` "Probably fine"?
- Score 90–100 = Safe `#00A67E` "Vibe check passed"?
- Score numerator color = score band? Denominator and surrounding UI stay neutral?

### 6. Design System Compliance
- Buttons are pills (radius 999 px)? One primary per screen? Motion tokens respected (120 / 200 / 320 ms)?
- Corner radius from the allowed scale (0 / 4 / 14 / 999 px) — no 6 px, no 8 px, no 10 px?
- Spacing on multiples of 4?
- Toast slide-in respects the 6 px overshoot rule? Counter bump uses the `counter-bump` keyframe?

### 7. Sound (if applicable)
- Uses only the 5 sanctioned cues (`hover`, `tap`, `tick`, `safe`, `block`)? Master capped at 0.55?
- Hover cue gated to `pointer: fine`? Auto-mute under `prefers-reduced-motion`?

### 8. Accessibility
- WCAG AA contrast — body ≥ 4.5:1, large ≥ 3:1?
- Color not the only indicator of meaning (especially in risk ladder)?
- Alt text on images? Focus states on interactive elements?

## Output Format

Return the verdict in this exact structure:

```
SCAMADVISER BRAND REVIEW VERDICT
Iteration: <N> of 10
Overall: <PASS | FAIL>

Pre-check
  Feel:        <PASS | FAIL>  <note>
  Sibling iso: <PASS | FAIL>  <note>
  Empowering:  <PASS | FAIL>  <note>

A. Color           <X/Y passed>
B. Typography      <X/Y passed>
C. Logo            <X/Y passed>
D. Voice & Copy    <X/Y passed>
E. Risk Ladder     <X/Y passed>
F. Design System   <X/Y passed>
G. Sound           <X/Y passed | N/A>
H. Accessibility   <X/Y passed>

FAILS (action required):
  · <item ID> — <description> → <fix applied?>

Pre-ship checklist:
  [ ] One primary CTA per surface
  [ ] Risk-ladder colors only on risk states
  [ ] No fear-mongering language
  [ ] No cross-brand palette bleed
```

## Out of Scope — Escalate to Humans

- Brand strategy or positioning shifts.
- New sub-brand creation or rebrand decisions.
- Cross-brand campaigns mixing ScamAdviser with Gogolook/Whoscall systems.
- Final approval on any public-facing output.
