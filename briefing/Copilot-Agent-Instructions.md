# Set up a Trueline Microsoft 365 Copilot agent

Use these instructions to build a **declarative Copilot agent** (formerly "Copilot GPT") inside the Trueline Microsoft 365 tenant. This is the most native option because Trueline already runs on Microsoft 365 — email, Outlook, OneDrive, SharePoint — and the agent can read from the existing tenant.

## Prerequisites

- A Microsoft 365 tenant with **Copilot for Microsoft 365** licences (or Copilot Studio access).
- An admin or maker with rights to create agents in **Copilot Studio** (`copilotstudio.microsoft.com`) or the **Microsoft 365 Copilot** app's agent builder.
- A SharePoint document library or OneDrive folder where the brand knowledge files will live (so the agent can read them). Recommendation: create a new SharePoint site `Trueline Brand` and upload everything there.

## Step 1 — Stage the knowledge files in SharePoint

Create this folder structure in SharePoint (or upload to an existing site under a `Brand` folder):

```
/sites/TruelineBrand/Documents/
  Brand-Guide-2026.pdf
  Trueline-AI-Briefing-Pack.pdf
  references/
    PLATFORM.md
    AUDIENCE.md
    VOICE.md
    BRAND.md
    COMPANY.md
```

Set access: everyone in the tenant who should use the agent needs **at least Read** on this library.

## Step 2 — Create the agent

In **Copilot Studio** (or the in-app agent builder):

1. **+ Create** → **New agent**.
2. **Name:** `Trueline Brand Voice`
3. **Description:** `On-brand drafting for Trueline: customer replies, proposals, marketing, social, internal docs, supplier comms. Reads the Trueline brand platform, audience model and voice rules.`
4. **Icon:** upload `logo-master.png` from `../assets/`.

## Step 3 — Set the agent instructions

In the **Instructions** field (sometimes called *System message* or *Agent prompt*):

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

Read the "Trueline AI Briefing Pack" and the reference files in the Trueline Brand SharePoint library before drafting anything. They contain the brand platform, audience model, voice rules, copy rules, do/do-not list, and worked examples.

When you generate a draft that will be sent from Outlook, apply the Trueline email signature block (full name, role, Trueline Patios, contactus@trueline.net.au, 1300 50 20 20) unless the user has already added their own.

Voice test (apply when unsure): "Would a homeowner reading this feel like Trueline gets them, or like Trueline is just trying to sell them something?" If the latter, soften.
```

## Step 4 — Add Knowledge sources

In the agent's **Knowledge** section:

1. **+ Add knowledge** → **SharePoint**.
2. Point to the `/sites/TruelineBrand/Documents/` library you set up in Step 1.
3. Select all the brand files (Briefing Pack PDF + all 5 reference `.md` files + the Brand Guide PDF).
4. Optionally, add a second knowledge source pointing at:
   - Your **Customer Reviews** library (Google reviews export, Trustpilot, etc.) — so the agent can quote real customer language.
   - Your **Completed Projects** library (case studies, before/after notes) — for grounded proof points.

Set the agent to **prefer organisational knowledge over public web** in the knowledge-priority settings.

## Step 5 — Configure tools / actions (optional)

Native Copilot tool integrations to enable:

- ✅ **Outlook** — so the agent can draft directly into an email reply.
- ✅ **Word** — for proposal/letter generation.
- ✅ **OneDrive / SharePoint** — for pulling in supporting docs.
- ❌ **Image generation** — recommended OFF for the same reason as the ChatGPT setup: brand-safety. Use the real photo library.

## Step 6 — Test it

In the agent's test pane, try these prompts.

1. *"Draft a 3-line enquiry reply for a Hamilton homeowner asking about an insulated patio. Mention we'll bring design options to the appointment."*
2. *"Write a social caption for a finished carport build in Toowong. Owner has a new caravan."*
3. *"Draft an internal team note about tomorrow's pre-build meeting for an Ascot job."* (Should switch to internal mode — direct, no marketing language, no brand red.)
4. *"Write a customer follow-up email after a quote was sent two weeks ago."*

If any output drifts off-brand, refine the instructions or knowledge sources.

## Step 7 — Publish and share

1. **Publish** the agent inside the tenant.
2. Grant access to the staff who'll use it (specific users, a security group, or the whole tenant).
3. Pin the agent in the **Microsoft 365 Copilot** app so staff find it without searching.
4. Optionally surface it inside Teams as an installable app for in-chat drafting.

## Maintenance

When the brand platform changes:
1. Update the source-of-truth `.md` files in the skill folder (`references/`).
2. Regenerate `Trueline-AI-Briefing-Pack.pdf` from the `.typ` file.
3. Upload the changed files to the `/sites/TruelineBrand/Documents/` library (overwrite, preserve filenames).
4. The agent's knowledge index will refresh automatically; allow up to an hour for changes to propagate.

That's it — staff can now use Copilot inside Outlook, Word, Teams and the M365 Copilot app to produce on-brand Trueline content, with the agent pulling from the SharePoint brand library.
