# ScamAdviser Skill Pack

Three Claude Code skills for the ScamAdviser B2C brand.

## Install

```bash
./skills/install.sh
```

Copies the three skills into `~/.claude/skills/`. Restart Claude Code after.

## The skills

| Skill | Layer | Reference files |
|---|---|---|
| **scamadviser-brand** | Identity — color, voice, logo, taglines | `colors.md`, `voice.md`, `logo.md`, `typography.md`, `taglines.md` |
| **scamadviser-web-ds** | Implementation — tokens, components, motion, sound | `tokens.json`, `tokens.css`, `components.md`, `motion-sound.md` |
| **scamadviser-brand-review** | Pre-ship compliance audit | `checklist.md` |

## Layering

```
scamadviser-brand          ← identity layer
        │
        ▼
scamadviser-web-ds         ← implementation tokens & components
        │
        ▼
scamadviser-brand-review   ← compliance check before shipping
```

When generating ScamAdviser content, the first two trigger automatically (via the brand skill's `description` and the web-ds skill's content keywords). Run the review skill manually after every output: `/skill scamadviser-brand-review`.

## Updating

The source of truth is the live brand guideline in this repo's root: `scamadviser-b2c-brand.html`.

When that file changes:
- Token changes → mirror in `scamadviser-web-ds/tokens.json` + `tokens.css`
- Component changes → mirror in `scamadviser-web-ds/components.md`
- Voice / tagline / logo changes → mirror in `scamadviser-brand/*.md`
- New compliance rule → add to `scamadviser-brand-review/checklist.md`

Bump the `version` in `tokens.json` for any token change.

## Manual install

```bash
cp -R skills/scamadviser-brand        ~/.claude/skills/
cp -R skills/scamadviser-web-ds       ~/.claude/skills/
cp -R skills/scamadviser-brand-review ~/.claude/skills/
```

## Verify

```
/skill scamadviser-brand
/skill scamadviser-web-ds
/skill scamadviser-brand-review
```

Each should load its SKILL.md without error.
