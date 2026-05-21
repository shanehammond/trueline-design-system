# Trueline Design System

Public reference for AI design tools (Claude Design, Figma AI, etc.) and external agencies/contractors producing on-brand Trueline work.

**Trueline** is an Australian custom outdoor living builder — patios, carports, verandahs and covered outdoor spaces. The umbrella brand is **Trueline Group**, operating two legal entities (Trueline Patios in QLD, Trueline in VIC). See [`brand/COMPANY.md`](brand/COMPANY.md) for the entity split.

---

## How to use this repo

**Briefing an AI design tool:** point it at this repo and tell it to read [`briefing/Trueline-AI-Briefing-Pack.md`](briefing/Trueline-AI-Briefing-Pack.md) first — it's the tool-agnostic master pack designed for paste-into-system-prompt use.

**Designing a one-off asset:** read the five files in [`brand/`](brand/) for the strategic + voice + visual rules, then grab the right logo from [`logos/`](logos/).

**Setting up a per-tool agent:** [`briefing/`](briefing/) contains setup instructions for Claude.ai Projects, ChatGPT Custom GPTs, and Microsoft 365 Copilot.

---

## Repo map

```
brand/        Canonical brand reference (the source of truth)
  PLATFORM.md   Strategic platform — brand idea, promise, 5 pillars, campaign
  AUDIENCE.md   Primary avatar, 5 segments, customer fears, journey stages
  VOICE.md      5 voice attributes, tone by channel, copy rules, do/do-not
  BRAND.md      Visual identity — colours, fonts, logo usage, document modes
  COMPANY.md    Legal entities, addresses, signatory, contract defaults

logos/        Master logo files in every format
  ai/           Adobe Illustrator source (CMYK + RGB)
  eps/          EPS (Black, Master CMYK, PMS, White)
  jpg/          JPG (Black RGB, Master RGB)
  png/          PNG (Large + Small) — Black, Master, White
  Trueline-Brand-Guide-2026.pdf    Original brand guide
  _File Formats Explained.pdf      Which file to use when
  FILE-FORMATS.md                  Brand notes accompanying the logo set

briefing/     Transferable AI Briefing Pack — for handing to external tools/agencies
  Trueline-AI-Briefing-Pack.md     Master pack (paste into any AI system prompt)
  Trueline-AI-Briefing-Pack.pdf    Brand-styled PDF for human handover
  Trueline-AI-Briefing-Pack.typ    Typst source (regenerate the PDF)
  Claude-Project-Instructions.md   Setup for a shared Claude.ai Project
  ChatGPT-Custom-GPT-Instructions.md
  Copilot-Agent-Instructions.md
  README.md                        Orientation for the briefing folder
```

---

## Brand at a glance

| Thing | Value |
|---|---|
| Brand idea | **Covered Life. Better Lived.** |
| Logo tagline | DREAM LIVING (locked under logo) |
| Brand red | `#941114` (PMS 7622C) |
| Brand grey | `#4a4f55` (PMS 7540C) |
| Heading font | Gotham Medium → Montserrat fallback |
| Body font | Gotham Book → Montserrat fallback |
| Office docs | Aptos / Calibri fallback |

**Document modes — always pick one:**

- **External** (customer, supplier, agency, press, social, web, contracts): master logo (red + grey), brand red used for accents.
- **Internal** (staff-only, ops, HR drafts, working documents): white logo on a brand-grey (`#4a4f55`) header band, **no brand red**.

Never mix modes. The colour split is the governance cue — anyone glancing at a page should know in under a second whether it's safe to send externally.

---

## Keeping it in sync

`brand/` and `briefing/` mirror the canonical Trueline Claude Code skill at `~/.claude/skills/trueline/`. When the skill changes, re-sync with:

```bash
./scripts/sync-from-skill.sh
```

It copies the latest reference files in, runs `git status`, and stops — review the diff and commit if happy. Logos are not synced (their source files live in the private `trueline-business` repo and rarely change).

---

## What's NOT in here

This repo is intentionally narrow. Business data, strategy decks, customer data, sales numbers, staff information and operational tooling live in private Trueline repos and are not published.

If you're an agency or contractor and need access to anything beyond what's in this repo, contact Shane Hammond (Managing Director).

---

## Ownership and use

© Trueline Group. The logo files, brand assets and brand IP in this repo are the property of Trueline (Lacarsha Constructions Pty Ltd and Trueline Patios Victoria Pty Ltd). They are published here so AI tools and authorised partners can produce on-brand work. They are **not** licensed for use by unrelated third parties.

If you're producing work for or on behalf of Trueline, you may use these assets in line with the rules in [`brand/BRAND.md`](brand/BRAND.md). For any other use, ask first.
