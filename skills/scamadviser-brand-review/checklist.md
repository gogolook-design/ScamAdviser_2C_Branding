# ScamAdviser B2C Brand Compliance Checklist

> Run through every item. Mark each PASS / FAIL / N/A.
> All FAIL items must be resolved before the asset is approved.

## A. Color — 30/30/20/20 (10 checks)

- [ ] A1. Warm Grey `#EFEBE2` canvas is present and reads as the dominant background (~30%).
- [ ] A2. Warm White `#FFFFF8` is used for cards/modals/overlays (~30%).
- [ ] A3. ScamAdviser Red `#CC1417` is present for CTAs / alerts / hero focal moments (~20%) — no tints, no approximations.
- [ ] A4. Ink `#1A1A1A` anchors body text, borders, dark UI (~20%).
- [ ] A5. Signal Red `#EE3E41` is used **only** for the Dangerous risk band — never as a brand accent.
- [ ] A6. Secondary palette (Slate / Amber / Plum / Forest / Trust Blue) appears **only** in editorial or community contexts.
- [ ] A7. Risk Ladder colors are **never** decorative — green isn't "growth," red isn't "delta."
- [ ] A8. No competing primaries on the same surface (no Whoscall green, Gogolook blue, etc.).
- [ ] A9. No gradients on type or CTAs (soft area fills under trend lines are the only allowed gradient).
- [ ] A10. SA Red `#CC1417` passes WCAG AA on its actual background (on cream and white = 5.93:1 ✓; on Ink fails normal — use Signal Red `#EE3E41` instead on dark cells).

## B. Typography (8 checks)

- [ ] B1. Headings use **Inter** (300/400/500/600/700/800/900). System fallback: `-apple-system, sans-serif`.
- [ ] B2. Data, scores, code-style readouts use **JetBrains Mono** (400/500/700). Fallback: `'SF Mono', monospace`.
- [ ] B3. H1 = Inter 800 with −3.5% tracking.
- [ ] B4. H2 = Inter 500 with −2% tracking.
- [ ] B5. Body = Inter 400, line-height 1.5.
- [ ] B6. Numbers in score readouts use JetBrains Mono 700 with negative letter-spacing.
- [ ] B7. No serif, decorative, or condensed typefaces anywhere.
- [ ] B8. No mixed weight scales within a surface (don't combine 300, 500, and 800 in the same panel without intent).

## C. Logo (8 checks)

- [ ] C1. Uses the official `bs/d` mark — never recreated by hand.
- [ ] C2. Slash is the correct 10° skew — no other angle.
- [ ] C3. Correct variant for context: Primary light / Alert red / Reverse dark / Wordmark / Favicon.
- [ ] C4. Clear space = cap-height of the slash on all four sides. Nothing crops into that frame.
- [ ] C5. Meets minimum size: 24 px digital, 8 mm print.
- [ ] C6. No gradients, drop shadows, outlines, glows, 3D, or containers.
- [ ] C7. No rotation beyond the built-in 10° skew.
- [ ] C8. Red slash on red background is forbidden — switch variant.

## D. Voice & Copy (12 checks)

- [ ] D1. Leads with the verb. ("Check that link" — not "It is recommended that you check…")
- [ ] D2. Uses concrete numbers. ("12/100" beats "low.")
- [ ] D3. Quotes the community. ("2,341 people reported this" > "our data shows.")
- [ ] D4. Group-chat energy, not corporate memo.
- [ ] D5. No fear-mongering — "You'll lose everything" reads as cringe.
- [ ] D6. No jargon — "Threat vector" belongs in B2B decks, not consumer UI.
- [ ] D7. No unsolicited tech explanation — nobody asked about the algorithm.
- [ ] D8. Self-aware about AI — named as "Sharp," not as a buzzword.
- [ ] D9. "ScamAdviser" spelled correctly (one word, S + A capitals; never ScamAdvisor / scam-adviser / SCAM ADVISER).
- [ ] D10. Casual hero (`your digital bs/detector.`) is **not** translated — cadence is the point.
- [ ] D11. Primary hero (`Check Before You Trust.`) localized where appropriate, but never lost.
- [ ] D12. Sibling-brand names kept distinct (Gogolook / Whoscall / Roo.cash / Juji / IRIS) — no voice or palette mixing.

## E. Risk Ladder Integrity (6 checks)

- [ ] E1. Score 0–39 = Dangerous `#EE3E41` — verdict reads "Don't click" / "Failed the vibe check."
- [ ] E2. Score 40–59 = Likely Dangerous `#FF6712` — verdict reads "Sketchy — back out."
- [ ] E3. Score 60–69 = Warning `#FF8A00` — verdict reads "Proceed carefully."
- [ ] E4. Score 70–89 = Likely Safe `#63B100` — verdict reads "Probably fine."
- [ ] E5. Score 90–100 = Safe `#00A67E` — verdict reads "Vibe check passed" / "You're good."
- [ ] E6. The numerator's color = the band's color. Denominator (`/100`) stays neutral so the number does the talking.

## F. Design System Compliance (12 checks)

- [ ] F1. Corner radius is from the sanctioned scale: 0 / 4 / 14 / 999 px. No 6 / 8 / 10 / 12 px.
- [ ] F2. Buttons are pills (radius 999 px). One primary per surface.
- [ ] F3. Button variants used correctly: Primary (red fill), Secondary (ink outline), Ghost (text only), Danger (ink → red on hover).
- [ ] F4. Spacing is on the 4 px grid (4 / 8 / 16 / 24 / 48 / 80).
- [ ] F5. Section padding 80–120 px (desktop) / 64 px (mobile). Card padding 24–32 px.
- [ ] F6. Motion respects the three durations: 120 ms fast / 200 ms base / 320 ms slow. No bouncy springs except the toast's 6 px overshoot dampen at 70%.
- [ ] F7. Toasts use radius 14 px, padding 12/16, slide from right, hold 2.5 s, fade out.
- [ ] F8. Highlight marks use SA Red @ 18% (1/4 px padding, 2 px radius). One per paragraph.
- [ ] F9. Solid red `mark` only used for hot moments that have to land.
- [ ] F10. Icons are Phosphor Regular @ 2 px stroke, round caps and joins. No mixed icon libraries.
- [ ] F11. Cards / score badges / counters live on Warm White, not Warm Grey.
- [ ] F12. Component anatomy = data + frame + action (no "decorative-only" layers).

## G. Sound (5 checks — N/A if no audio surface)

- [ ] G1. Uses only sanctioned cues: `hover` / `tap` / `tick` / `safe` / `block`. No custom sounds.
- [ ] G2. Master gain capped at 0.55. Volumes per cue follow spec.
- [ ] G3. Hover cue throttled to ≥ 110 ms and gated to `pointer: fine`.
- [ ] G4. Sound state persisted across sessions (localStorage), default ON.
- [ ] G5. Auto-mute under `prefers-reduced-motion`.

## H. Accessibility (10 checks)

- [ ] H1. Body text contrast ≥ 4.5:1 against its actual background (compute after opacity multiplies).
- [ ] H2. Large text (≥ 18.66 px @ 700 weight, or ≥ 24 px any weight) contrast ≥ 3:1.
- [ ] H3. Color is not the only indicator of state — verdict labels + icons + verdict text pair with the band color.
- [ ] H4. Risk-ladder score badges use ink text (not white) on warm bands `#FF6712 / #FF8A00 / #63B100`.
- [ ] H5. Focus visible on every interactive element.
- [ ] H6. Tap targets ≥ 44 × 44 px (mobile) / ≥ 32 × 32 px (web).
- [ ] H7. Alt text on every meaningful image; decorative images marked `alt=""`.
- [ ] H8. Animation respects `prefers-reduced-motion`.
- [ ] H9. Sound respects `prefers-reduced-motion` (auto-mute).
- [ ] H10. Heading order is logical (no skipped levels) and one H1 per surface.

## Common FAIL → Fix Reference

| FAIL pattern | Fix |
|---|---|
| Signal Red `#EE3E41` used as brand accent | Replace with SA Red `#CC1417`; reserve `#EE3E41` for danger band only |
| White text on `#FF8A00` / `#63B100` score badge | Switch text to `var(--ink)`; passes AA at 5+:1 |
| Score `12` with green color | Use `#EE3E41` — numerator color = band color |
| Risk-Ladder green used for "growth" stat | Use ink + SA Red highlight; risk colors are functional only |
| "We advise you to verify the link" | "Check that link before you tap." — lead with verb |
| Pill button at 12 px radius | Snap to 999 px (pill) or 14 px (card). No middle ground. |
| Two primary CTAs on one screen | Keep one primary, demote others to secondary or ghost |
| Cross-brand colors (green/blue/orange) creeping in | Audit palette; remove sibling-brand hex values |
