# Trueline visual identity — full reference

Source: Trueline brand guide by Lane Creative (2015, re-issued 2026). The PDF is in `../assets/Trueline-Brand-Guide-2026.pdf` if you need to verify anything.

## Colours

| Use | Hex | RGB | CMYK | Pantone |
|---|---|---|---|---|
| Brand red (primary) | `#941114` | 148, 17, 20 | C0 M97 Y89 K45 | PMS 7622C |
| Brand grey (body/secondary) | `#4a4f55` | 74, 79, 85 | C66 M59 Y55 K36 | PMS 7540C |

**Rules:**
- Red is for the logo, accents, headings, primary buttons, key emphasis. **Not body text.**
- Grey is the workhorse: body text, secondary headings, footers, supporting marks.
- Pure black (`#000`) is acceptable for body text in print where the grey may render too light.
- Don't introduce additional colours unless explicitly briefed (e.g. RAG status colours in dashboards, photographic imagery).

## Typography

**Brand fonts:** Gotham Medium + Gotham Book — paid licence via typography.com.

**Web fallback:** Montserrat (free via Google Fonts) — closest geometric sans-serif. Import via:
```html
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
```

**Office documents fallback:** Aptos (Microsoft 365 default) or Calibri.

**Recommended CSS font stack:**
```css
font-family: 'Gotham', 'Montserrat', 'Helvetica Neue', Arial, sans-serif;
```

**Headings:** Gotham Medium, uppercase for major section headings, sentence case for sub-headings.
**Body:** Gotham Book at 12pt for print, 14–16px for web.

## Logo

### Files (in `../assets/`)

| File | When to use |
|---|---|
| `logo-master.png` | **Default.** Red + grey on white or light backgrounds. |
| `logo-black.png` | Single-colour situations (fax, B&W print, low-cost reproduction). |
| `logo-white.png` | Reversed — for dark backgrounds or where the red panel is already part of the design. |
| `logo-master-sml.png` | Small reproduction (<40mm wide) — use this instead of scaling down the large file. |

### Clear space rule

Leave whitespace around the logo equal to the height of the "DREAM LIVING" tagline on **all four sides**. Never crowd the logo with text, photos, or graphic elements.

### What NOT to do

- Don't stretch, skew, or distort.
- Don't recolour outside the master/black/white palette.
- Don't rotate.
- Don't apply effects (drop shadows, glows, gradients).
- Don't recreate the logo with CSS, HTML, or text approximations — always use the PNG file.
- Don't use the small variant larger than ~40mm wide.
- Don't place the master logo on a red background (use the white variant instead).

## Document modes — external vs internal

Trueline documents operate in two visual modes. The mode is a governance signal: anyone glancing at a page should know in under a second whether it's safe to send externally.

### External mode (default — for clients, customers, suppliers, agencies, press, social, web)

- Header / logo: **master logo (red + grey)** on a **white or light background**.
- Page background: white.
- Accents: brand red `#941114`.
- Body text: brand grey `#4a4f55`.
- This is the default for *everything customer-facing*: quotes, proposals, customer letters, marketing PDFs, web pages, email signatures, brochures, social tiles, contracts a customer signs.

### Internal mode (for staff-only, team comms, ops notes, internal slides, HR drafts, working documents)

- Header / logo: **white logo (`logo-white.png`) on a brand-grey (`#4a4f55`) header band** running full width across the top of the page.
- Page background: white.
- Accents: brand grey `#4a4f55` (darker) and white. **No brand red** in internal documents — that's the visual cue that distinguishes them from external.
- Body text: brand grey `#4a4f55`.
- An "INTERNAL" tag (small, uppercase, white-on-grey) can sit in the header band for extra clarity.
- This is the mode for *team-only* content: internal updates, ops checklists, HR drafts, board notes, meeting minutes, internal training, working drafts of customer documents before they're approved for send.

**Quick test:** if a document somehow ended up on a customer's desk, would it embarrass us? If the document is internal mode (white-on-grey, no red), the visual cue itself flags it as misdirected. If it's external mode (master logo, red accents), it's ready to be seen.

**Never mix.** A document is either external or internal — don't half-apply both. If a working draft will eventually be sent externally, build it in external mode from the start and watermark/footer it `DRAFT — INTERNAL` until approved.

## Layout principles

- **Restraint over decoration.** Trueline's identity is premium and confident; it doesn't need ornamentation.
- **Lots of whitespace.** Cramped layouts feel cheap and undermine the "Dream Living" positioning.
- **Right-align or top-right logo placement** for letters, contracts, and formal documents (matches existing letterhead).
- **Top-left or top-centre logo** for marketing materials, slides, web headers.
- **Internal mode uses a full-width grey header band**, not a floating logo — the band IS the visual cue.

## Practical recipes

### Web page header
```html
<header style="padding: 40px 60px; text-align: right;">
  <img src="data:image/png;base64,..." alt="Trueline" style="height: 50px;">
</header>
```

### Slide title
- Background: white
- Logo: top-right, height ~5% of slide height
- Title: Montserrat Bold, brand grey `#4a4f55`, 36pt
- Accent rule under title: 4px brand red `#941114`, 60px wide

### Letterhead (Word)
- Logo: top-right of page 1 only (already set up in `templates/employment-contract-template.docx`)
- Footer: brand grey, 8pt, all pages

### Email signature
- Logo: 120px wide max
- Name: Gotham Medium 14pt, brand grey
- Title: Gotham Book 11pt, brand grey
- Contact info: 10pt, brand grey
- Optional: 2px red accent rule under the block

### Internal-mode header band (HTML / web / slides)
```html
<header style="background: #4a4f55; padding: 24px 60px; display: flex; align-items: center; justify-content: space-between;">
  <img src="data:image/png;base64,..." alt="Trueline" style="height: 40px;">
  <span style="color: #ffffff; font-size: 11px; letter-spacing: 0.15em; text-transform: uppercase;">Internal</span>
</header>
```
- Uses `logo-white.png` (the reversed lockup).
- Full-width grey band — not a floating logo.
- The "INTERNAL" tag on the right is optional but recommended for sensitive working documents.
