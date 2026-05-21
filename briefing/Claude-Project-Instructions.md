# Set up a Trueline Claude.ai Project

Use these instructions to stand up a shared **Claude.ai Project** that any Trueline staff member (or external collaborator with an invite) can use to produce on-brand communications.

A Claude Project gives every conversation inside it the same system prompt and the same knowledge files. It's the cleanest setup for keeping staff on-brand without each person having to remember the rules.

## Prerequisites

- A Claude.ai Team or Enterprise plan (Projects are a paid-plan feature).
- Workspace admin or member-with-create-project rights.
- This `briefing/` folder available locally so you can attach the knowledge files.

## Step 1 — Create the Project

1. In Claude.ai, click **Projects** → **Create project**.
2. **Name:** `Trueline — On-Brand Communications`
3. **Description (optional):** *On-brand drafting for Trueline customer replies, proposals, marketing, social, internal docs, and supplier communications. All outputs follow the Trueline brand platform, audience model and voice rules.*
4. Set visibility per your team's preference (workspace-wide is recommended so anyone can use it).

## Step 2 — Set the Project instructions (system prompt)

Paste the following into the **Project instructions** field. This is the always-on system prompt for every conversation in this project.

```
You are the on-brand writing partner for Trueline — an Australian custom outdoor living builder operating as TWO LEGAL ENTITIES under the Trueline Group brand:
- Lacarsha Constructions Pty Ltd, ACN 135 177 221, T/A Trueline Patios — serving South East Queensland and Central Queensland.
- Trueline Patios Victoria Pty Ltd, ACN 626 838 211, T/A Trueline — serving Victoria.

For any contractual, financial or legal document, pick the entity matching the customer's project location. Never mix entities on the same document. If unsure, ask.

For every Trueline communication you draft:

1. Confirm the document MODE first — external (customer/supplier/agency/press/social/web/contracts) or internal (staff-only/ops/team/HR drafts). If unclear, ask.
2. Confirm the audience SEGMENT and JOURNEY STAGE for customer-facing work. Default to Segment 1 (Outdoor entertaining family) if unclear.
3. Apply the five VOICE attributes: Confident, Human, Premium practical, Reassuring, Local.
4. Lead with the customer OUTCOME, support with PROOF. Never lead with product specs in customer-facing copy.
5. Anchor the message to the brand promise and one of the five pillars (Lifestyle, Trust, Design confidence, Built for Australia, Ease).
6. Apply the visual identity rules when the deliverable is visual: external uses red+grey master logo on white; internal uses white logo on brand-grey #4a4f55 header band with NO brand red.
7. Use Australian English (spelling, DD/MM dates, AUD).
8. Flag anything you'd otherwise invent (prices, staff names, warranties, customer details, ABNs) — ask, don't fabricate.

Read the attached "Trueline AI Briefing Pack" before drafting anything. It contains the brand platform, audience model, voice rules, copy rules, do/do-not list, and worked examples.

The "Brand Guide" PDF is the visual identity source of truth.

The reference markdown files (PLATFORM, AUDIENCE, VOICE, BRAND, COMPANY) contain the full detail beneath the Briefing Pack — consult them when you need depth.

Voice test (apply when unsure): "Would a homeowner reading this feel like Trueline gets them, or like Trueline is just trying to sell them something?" If the latter, soften.
```

## Step 3 — Attach the knowledge files

In the Project's **Knowledge** section, upload all six of these files from the `briefing/` and `references/` folders:

| File | What it provides |
|---|---|
| `Trueline-AI-Briefing-Pack.pdf` (this folder) | Distilled master pack — primary source. |
| `PLATFORM.md` (`../references/`) | Strategic centre: brand idea, promise, positioning, pillars, master campaign. |
| `AUDIENCE.md` (`../references/`) | Primary avatar, 5 segments, fears/responses, journey stages. |
| `VOICE.md` (`../references/`) | 5 voice attributes, tone-by-channel, copy rules, Do/Do-not, worked examples. |
| `BRAND.md` (`../references/`) | Visual identity: colours, fonts, logos, document modes. |
| `COMPANY.md` (`../references/`) | Legal entity, ACN, addresses, signatory, contract defaults. |

Optional but recommended — also attach:
- `Trueline-Brand-Guide-2026.pdf` (`../assets/`) — original Lane Creative brand guide for visual edge cases.
- A current customer review export (Google reviews PDF) — gives Claude real customer language to reference.

## Step 4 — Test it

Start a new chat in the project and try these prompts in order. If any output drifts off-brand, refine the instructions or knowledge attachments.

1. *"Draft a 3-line enquiry reply for a Hamilton homeowner asking about an insulated patio. Mention we'll bring design options to the appointment."*
2. *"Write a social caption for a finished carport build in Toowong. Owner has a new caravan."*
3. *"Draft an internal team note about tomorrow's pre-build meeting for an Ascot job."* (Should switch to internal mode — direct, no marketing language, no brand red.)
4. *"Write a customer follow-up email after a quote was sent two weeks ago."* (Should not pressure; should reference proof/process.)

## Step 5 — Roll out

- Share the project URL with the team.
- Pin the project in the workspace sidebar so staff find it without hunting.
- Add a short note in the team channel: *"For Trueline customer comms, marketing copy, internal docs — use this project. It's already on-brand."*

## Maintenance

When the brand platform changes:
1. Update the source-of-truth `.md` files in the skill folder (`references/`).
2. Regenerate `Trueline-AI-Briefing-Pack.pdf` from the `.typ` file.
3. Re-upload the changed files to the Claude Project's Knowledge section (Claude.ai keeps the file history clean if you replace by name).

That's it — the project is now the team's on-brand AI workspace.
