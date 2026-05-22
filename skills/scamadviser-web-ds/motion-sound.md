# ScamAdviser Motion + Sound

> Implementation reference for the brand's motion language and sonic palette.
> Live demo: [`motion-sound-lab.html`](../../motion-sound-lab.html) (internal).

## Motion

### Three durations, one easing

| Token | Value | Use |
|---|---|---|
| `--motion-fast` | 120 ms · `--ease-brand` | UI feedback — hover, tap, toggle |
| `--motion-base` | 200 ms · `--ease-brand` | Default transition |
| `--motion-slow` | 320 ms · `--ease-slow` | Layout shifts, modals, page transitions |

```css
--ease-brand: cubic-bezier(0.2, 0.8, 0.2, 1);
--ease-slow:  cubic-bezier(0.4, 0, 0.2, 1);
```

### Hard rules

- No bouncy springs.
- No parallax.
- No spinning loaders longer than 1.6 s — show progress instead.
- The toast's 6 px overshoot dampen at 70% is the ONE place we break the no-bounce rule.
- Always respect `prefers-reduced-motion` — motion tokens collapse to 0 ms.

### Sanctioned patterns

| Pattern | Selector | Spec |
|---|---|---|
| **Button micro** | `.sa-btn.primary` | Hover: `translateY(-1px)` + red glow shadow. Active: `scale(0.97)` + shadow none. |
| **Counter bump** | `.counter-bump` | 0% → 35% (`translateY(-2px) scale(1.05)`) → 100% over 220 ms. Trigger by removing/re-adding the class around a reflow. |
| **Toast in** | `@keyframes dsToastIn` | 320 ms slide from right with 6 px overshoot at 70%. |
| **Pulse** | `@keyframes pulseBorder` | 2-beat red border + tinted fill — used once on first reveal, never looped. |
| **Scan sweep** | gradient bar passing top→bottom on the target card over 1400 ms `--ease-slow`. |
| **Highlight ink-in** | `.hl-mark.on` | Background fades to SA Red @ 18% over 220 ms `--ease-brand`. Stagger 280 ms per mark in a paragraph. |
| **Score reveal** | JS count-up 0 → N over 600 ms, eased with `1 − (1−t)^3` (cubic out). |

---

## Sound (Sonic palette · 5 cues)

All cues are synthesized with **Web Audio API** — no asset files, no licensing.
Master gain capped at 0.55. Sound is **on by default**. Auto-mute under `prefers-reduced-motion`.

### Cue spec

| Cue | When | Type | Params |
|---|---|---|---|
| `hover` | Pointer enters interactive element | Sine | 2.2 kHz · 22 ms · gain 0.04 · attack 0.001 |
| `tap` | Any `.sa-btn` / `.ext-btn` press | Sine | 1.2 kHz · 40 ms · gain 0.16 · attack 0.001 |
| `tick` | Counter increment | Triangle | 520 Hz → 380 Hz · 70 ms · gain 0.18 |
| `safe` | Safe verdict landed | Sine ×2 | C5 (523.25) 160 ms → wait 90 ms → E5 (659.25) 220 ms · gain 0.20 |
| `block` | Danger CTA pressed ("Back to safety") | Tone + Noise | Tone: 220 Hz → 80 Hz · 180 ms · gain 0.30 · Noise: LP filter 600 → 120 Hz · Q 1.5 · 220 ms · gain 0.16 |

### Wiring rules

- **Global tap:** `document.addEventListener('pointerdown', …)` catches any `.sa-btn` / `.ext-btn` and plays `cue.tap` unless overridden.
- **Cue overrides:** add `data-cue-override="block"` (or any other cue name) on a specific button to swap the cue.
- **Danger buttons** auto-play `cue.block`.
- **Counter increments** play `cue.tick` via the same JS that adds the `counter-bump` class.
- **Hover cue** throttled to ≥ 110 ms between plays, gated to `(pointer: fine)` so touch devices skip it. Re-enters within the same element are ignored (use `pointerover` + `relatedTarget` containment check).
- Preference persists in `localStorage` under `sa-audio` (`"1"` = on, `"0"` = off, null = default-on).

### Reference implementation

The complete audio engine is at the end of `scamadviser-b2c-brand.html` — search for the comment `// Sonic palette — synthesized cues`.

It exposes:

```js
const cues = {
  hover(),  // 22 ms sine tick
  tap(),    // 40 ms sine tick
  tick(),   // 70 ms triangle pop
  safe(),   // 220 ms C5 → E5
  block()   // 220 ms thunk + LP noise
};
```

Each cue calls `ensure()` to lazily create a single shared `AudioContext` + master `GainNode`.

### Sticky UI toggle

Bottom-right pill button labeled "Sound on" / "Sound off":

```html
<button class="audio-toggle on">
  <span class="ind"></span><span>Sound on</span>
</button>
```

Indicator: 8 × 8 dot, white with subtle ring glow when on, dim grey when off.

### Forbidden additions

- ❌ Pre-recorded MP3 / WAV asset files.
- ❌ Sounds longer than 280 ms.
- ❌ Looping background music or ambience (the scan-loop cue was prototyped and dropped — too crawly).
- ❌ Bell / chime / harp / synth-pad textures — only the 5 spec cues above.
- ❌ System notification sounds (causes brand-confusion with iOS / Android).
