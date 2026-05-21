# Trueline Brand Guidelines (working reference)

This file tells Claude how to apply the Trueline brand to anything it produces — documents, slides, contracts, web pages, reports, marketing materials.

**Source of truth:** `Trueline-Brand-Guide-2026.pdf` in this same folder.

## Tagline

**TRUELINE** — *Dream Living*

Always render as one word "TRUELINE", uppercase. Tagline "DREAM LIVING" sits beneath, also uppercase, in the brand grey.

## Colours

| Use | Hex | RGB | CMYK | Pantone |
|---|---|---|---|---|
| Brand red (primary) | `#941114` | 148, 17, 20 | C0 M97 Y89 K45 | PMS 7622C |
| Brand grey (secondary / body text) | `#4a4f55` | 74, 79, 85 | C66 M59 Y55 K36 | PMS 7540C |

**Rules:**
- Red is for the logo, accent elements, headings, primary buttons, and key emphasis only — not body text.
- Grey is the workhorse: body text, secondary headings, footers, supporting marks.
- Pure black (`#000`) is acceptable for body text in print where the grey may render too light.
- Avoid introducing additional colours unless explicitly briefed (e.g. RAG status colours in dashboards).

## Typography

**Brand fonts:** Gotham Medium + Gotham Book (paid; licensed via typography.com).

**Web fallback:** Montserrat (free via Google Fonts) — closest geometric sans-serif match.

**Office documents fallback:** Aptos (Microsoft default) or Calibri — used in existing employment contract template.

**Recommended font stack for web:**
```css
font-family: 'Gotham', 'Montserrat', 'Helvetica Neue', Arial, sans-serif;
```

## Logo files

Located in this folder:

```
png/
  Large/
    Trueline-Logo-MASTER-lge.png   ← default for most use (567×125, RGBA)
    Trueline-Logo-BLACK-lge.png    ← single-colour black, for B&W or where red is wrong
    Trueline-Logo-WHITE-lge.png    ← reversed (white on red bg), for dark backgrounds
  Small/
    Trueline-Logo-MASTER-sml.png
    Trueline-Logo-BLACK-sml.png
    Trueline-Logo-WHITE-sml.png
ai/      ← Adobe Illustrator master files
eps/     ← vector for print
jpg/     ← jpg variants (no transparency)
```

**Default choice:** `png/Large/Trueline-Logo-MASTER-lge.png` for documents, web, and digital assets.

## Logo usage rules

1. **Clear space** — leave margin equal to the height of the "DREAM LIVING" tagline on all four sides of the logo. Never crowd it with text or other graphics.
2. **Variants:**
   - Master (red + grey) on white or very light backgrounds.
   - Black on light backgrounds where colour isn't appropriate (e.g. fax, B&W print).
   - White on red or dark photographic backgrounds — use the reversed variant which has the red panel built in, or place white-only logo onto a dark bg.
3. **Don't** stretch, recolour, rotate, or apply effects (drop shadows, gradients) to the logo.
4. **Don't** use small variants larger than ~40mm wide; use the large file for anything bigger.

## When applying brand to outputs

- Use the embedded base64 logo or the file path above — never recreate the logo with text/CSS.
- For HTML, embed the master PNG as a `data:image/png;base64,...` URI to keep files self-contained.
- For Word docs, the existing employment contract template already has the correct logo embedded — preserve it when editing.
- For PowerPoint decks, use the master logo top-right or bottom-left, sized so it has clear space.
- For headings, prefer the brand grey; use red sparingly for emphasis or section dividers.

## Origin

Brand guide produced by **Lane Creative** (lanecreative.com.au), May 2015. Re-issued 2026.
