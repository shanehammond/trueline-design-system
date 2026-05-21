# Trueline AI Briefing Pack

The transferable layer of the Trueline brand skill. Use these files to put on-brand Trueline drafting capability into the hands of any staff member, agency or contractor — regardless of which AI tool they use.

## What's in here

| File | Purpose |
|---|---|
| `Trueline-AI-Briefing-Pack.md` | The master briefing pack in Markdown — paste this into any AI tool's system prompt / project instructions. |
| `Trueline-AI-Briefing-Pack.pdf` | The same content rendered as a brand-styled PDF for human reading / handover to agencies. |
| `Trueline-AI-Briefing-Pack.typ` | Typst source for the PDF. Regenerate with `typst compile Trueline-AI-Briefing-Pack.typ`. |
| `Claude-Project-Instructions.md` | Step-by-step setup for a shared Claude.ai Project. |
| `ChatGPT-Custom-GPT-Instructions.md` | Step-by-step setup for a ChatGPT Custom GPT. |
| `Copilot-Agent-Instructions.md` | Step-by-step setup for a Microsoft 365 Copilot agent (recommended — native to Trueline's existing tooling). |

## Which one do I use?

- Handing the brand pack to an external agency or copywriter? → Send them `Trueline-AI-Briefing-Pack.pdf`.
- Setting up a tool for staff? → Follow the matching setup file (Claude, ChatGPT or Copilot).
- Just want a one-off branded draft from any AI tool? → Paste `Trueline-AI-Briefing-Pack.md` at the top of your chat, then ask for the draft.

## Source of truth

The PDF and per-tool wrappers are derived from the canonical `references/*.md` files one folder up. When the brand changes, update the references first, then regenerate this pack.
