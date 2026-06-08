# ScamAdviser B2C — Brand Guideline & Skill Pack

The living source of truth for the **ScamAdviser** consumer pivot. Single-page HTML guideline + a packaged set of Claude Code skills the team can drop into their own environments.

**Live guideline:** https://gogolook-design.github.io/ScamAdviser_2C_Branding/scamadviser-b2c-brand.html
**Password:** *(ask the team)*

---

## What's in this repo

| Path | What it is |
|---|---|
| `scamadviser-b2c-brand.html` | The deployed, password-gated brand guideline. Source of truth for every token. |
| `motion-sound-lab.html` | Internal sandbox for motion + sound experiments. Not linked publicly. |
| `skills/` | Three Claude Code skills, ready to install (see below). |
| `project/` | Original Claude Design export — assets, moodboard, earlier drafts. |
| `AGENTS.md` / `CLAUDE.md` | Working-memory + handoff instructions for AI coding agents. |
| `TEAM_OVERVIEW.md` | Detailed walkthrough of every section of the guideline for the team. |

---

## The skill pack

Three skills live under `skills/`. Together they cover identity, web implementation, and pre-ship compliance.

| Skill | What it does | When to use |
|---|---|---|
| **`scamadviser-brand`** | ScamAdviser B2C brand identity — color, voice, logo, typography, taglines. | Generating any consumer-facing copy, UI, or creative. |
| **`scamadviser-web-ds`** | Web design system — tokens, components, motion, sound. | Building or reviewing browser-extension / web-app / marketing-site UI. |
| **`scamadviser-brand-review`** | Pre-ship compliance audit — 8 categories, ~70 checks, up to 10 iterations. | Run after generating any ScamAdviser asset, before shipping. |

### Install

The fastest way is the included script:

```bash
git clone https://github.com/gogolook-design/ScamAdviser_2C_Branding.git
cd ScamAdviser_2C_Branding
./skills/install.sh
```

That copies the three skill folders into `~/.claude/skills/`. Restart Claude Code afterward.

Manual install if you'd rather:

```bash
cp -R skills/scamadviser-brand        ~/.claude/skills/
cp -R skills/scamadviser-web-ds       ~/.claude/skills/
cp -R skills/scamadviser-brand-review ~/.claude/skills/
```

### Verify

In a Claude Code session:

```
/skill scamadviser-brand
```

You should see the brand SKILL.md load. Same for the other two.

---

## Working with the guideline

The HTML guideline is a **single self-contained file** — no build step, no dependencies. Open it in a browser, type the password, and everything works (motion, sound, all sections).

Quick map of the 12 sections:

1. **The Shift** — B2B Advisor → B2C Detector positioning.
2. **Logo & Campaign Mark** — ScamAdviser wordmark (the logo) variants + clear space, separately documented `bs/d` campaign treatment + its rules. They're not interchangeable.
3. **Color** — 30/30/20/20 primary system + secondary tier + risk ladder.
4. **Typography** — Inter + JetBrains Mono scale.
5. **Voice** — tone shifts, do/don't, voice examples.
6. **Mood** — photography (06a), illustration (06b), data viz (06c).
7. **UI Exploration** — 6 surfaces (extension, mobile, score detail, share, community, safe).
8. **Design System** — 12 blocks: buttons, spacing, padding, inputs, radius, motion, elevation, icons, highlight, sound, toast, component anatomy.
9. **Taglines** — primary, casual, campaign, community, partner.
10. **Close** — "catch what you'd miss."

Everything in §03 + §04 + §08 is mirrored in `skills/scamadviser-web-ds/tokens.json` so engineers and AI agents can reference the same values without scraping the HTML.

---

## Editing the guideline

The HTML is the source of truth. When something changes in the guideline, the matching token/spec in `skills/scamadviser-web-ds/` must change too.

Workflow:

1. Edit `scamadviser-b2c-brand.html`.
2. If the change affects any token (color, radius, motion duration, sound cue) or component spec → mirror it in `skills/scamadviser-web-ds/tokens.json`, `tokens.css`, and `components.md`.
3. If the change affects brand identity / voice / taglines → mirror it in `skills/scamadviser-brand/`.
4. Bump the version in `tokens.json` if it's a token change.
5. Commit + push. Pages redeploys automatically; the skills update when the team pulls or re-installs.

---

## Cross-brand context

ScamAdviser is one of five Gogolook brands. **Never let them bleed into each other.**

| Brand | Primary | Vibe |
|---|---|---|
| Gogolook (parent) | Blue `#0058EA` | Corporate, confident |
| Whoscall | Green `#07B53B` | Trustworthy utility |
| **ScamAdviser** | **Red `#CC1417`** | **Sharp, peer-powered, group-chat energy** |
| Roo.cash | Orange | Friendly, finance |
| Juji / IRIS | Purple / Magenta | Niche product UIs |

If you see another brand's hex / voice / mark inside a ScamAdviser asset, that's a FAIL.

---

## Repo

- Hosted at: [`gogolook-design/ScamAdviser_2C_Branding`](https://github.com/gogolook-design/ScamAdviser_2C_Branding)
- Deploy target: GitHub Pages (`main` branch, root)
- Rev: V1 · May 2026 · Internal
