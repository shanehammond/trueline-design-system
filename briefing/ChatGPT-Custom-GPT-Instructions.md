# Set up a Trueline ChatGPT Custom GPT

Use these instructions to build a **Custom GPT** that staff can use inside ChatGPT for on-brand Trueline communications.

A Custom GPT is the ChatGPT equivalent of a Claude.ai Project: persistent instructions, attached knowledge files, optional capabilities (web browsing, image generation, file upload).

## Prerequisites

- A ChatGPT Plus, Team, or Enterprise account (Custom GPT creation is a paid feature).
- This `briefing/` folder available locally so you can attach the knowledge files.

## Step 1 — Create the Custom GPT

1. In ChatGPT, click **Explore GPTs** → **+ Create**.
2. Choose **Configure** (the manual configuration tab, not the conversational builder).

## Step 2 — Fill in the basic fields

| Field | Value |
|---|---|
| Name | `Trueline Brand Voice` |
| Description | `On-brand drafting for Trueline: customer replies, proposals, marketing, social, internal docs, supplier comms. Follows the Trueline brand platform, audience model and voice rules.` |
| Profile picture | Upload `../assets/logo-master.png` (or generate a simple brand-red square). |

## Step 3 — Paste the Instructions

In the **Instructions** field, paste the following:

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

When a user asks for a visual asset (image generation), default to the visual identity rules: brand red #941114, brand grey #4a4f55, lots of whitespace, restrained styling, lifestyle-led imagery rather than product-spec close-ups. Never attempt to recreate the Trueline logo with AI image generation — instruct the user to embed the actual PNG file from their brand assets.

Voice test (apply when unsure): "Would a homeowner reading this feel like Trueline gets them, or like Trueline is just trying to sell them something?" If the latter, soften.
```

## Step 4 — Attach Knowledge files

In the **Knowledge** section, upload these files (up to 20 are allowed; we use 6–7):

| File | Source path |
|---|---|
| `Trueline-AI-Briefing-Pack.pdf` | `briefing/` |
| `PLATFORM.md` | `references/` |
| `AUDIENCE.md` | `references/` |
| `VOICE.md` | `references/` |
| `BRAND.md` | `references/` |
| `COMPANY.md` | `references/` |
| `Trueline-Brand-Guide-2026.pdf` | `assets/` (optional) |

> **Note on Knowledge privacy:** by default, ChatGPT Plus may use files for retrieval but won't train on them. For Team/Enterprise this is guaranteed. Don't upload anything genuinely confidential (live customer data, financials) — these brand files are fine.

## Step 5 — Configure Capabilities

In the **Capabilities** section:

- ✅ **Web Browsing** — useful for looking up suburbs, materials, council requirements when drafting.
- ❌ **DALL·E Image Generation** — recommended OFF for brand-safety. Image generation tends to invent off-brand visuals and can't render the real Trueline logo. If you need imagery, use the brand photo library.
- ✅ **Code Interpreter / Data Analysis** — useful if staff need to analyse review CSVs or quote spreadsheets.

## Step 6 — Conversation starters

Add these conversation starters so staff have a one-click way in:

- `Draft a customer enquiry reply`
- `Write a social caption for a finished build`
- `Draft an internal team note`
- `Write a quote follow-up email`

## Step 7 — Test it

Try these prompts. If any output drifts off-brand, tighten the instructions.

1. *"Draft a 3-line enquiry reply for a Hamilton homeowner asking about an insulated patio. Mention we'll bring design options to the appointment."*
2. *"Write a social caption for a finished carport build in Toowong. Owner has a new caravan."*
3. *"Draft an internal team note about tomorrow's pre-build meeting for an Ascot job."*
4. *"Write a customer follow-up email after a quote was sent two weeks ago."*

## Step 8 — Share and roll out

In the **Configure** tab, choose visibility:

- **Only me** — for personal testing.
- **Anyone with the link** — fastest way to share with staff and agencies.
- **Workspace** (Team / Enterprise) — visible to everyone in the org.

Share the link in your team comms.

## Maintenance

When the brand platform changes:
1. Update the source-of-truth `.md` files in the skill folder (`references/`).
2. Regenerate `Trueline-AI-Briefing-Pack.pdf` from the `.typ` file.
3. Open the Custom GPT in **Edit GPT** mode and replace the changed knowledge files.

That's it — staff can now use ChatGPT to produce on-brand Trueline content.
