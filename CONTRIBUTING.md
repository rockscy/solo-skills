# Contributing to solo-skills

English | [简体中文](CONTRIBUTING.zh.md)

Thanks for considering a PR. The bar is intentionally high so the pack stays small and useful.

## What belongs here

- **Solo-shaped problems.** Tasks a single person actually does monthly or more often.
- **No team-only workflows.** No skills that assume a code reviewer, a designer, a PM, or a marketing team.
- **No general-purpose skills.** Things like "summarize this document" belong in your own pack — solo-skills is for specific solo-founder situations.

## Required structure

Every new skill must have:

```
skills/<skill-name>/SKILL.md
```

`SKILL.md` must contain:

1. **Frontmatter** with `name` and a `description` that includes both *what it does* and *when it triggers*.
2. **`## When to use`** — concrete situations.
3. **`## When NOT to use`** — at least three counter-cases. **This is mandatory.**
4. **The framework / approach** in concrete steps.
5. **`## Output format`** — a fixed template, not vibes.
6. **At least one worked example** — input pasted as quote, output rendered in code block.
7. **`## 中文版`** section mirroring the English structure.

## Style

- One-sentence bullets. If you need two sentences, you're explaining implementation.
- No emojis (except where they appear in actual user-facing examples).
- No "I'm excited", "happy to help", "great question" filler.
- Past tense for outcomes, imperative for instructions.

## Workflow

1. Open an issue first describing the skill (one paragraph: *who*, *when triggered*, *what it produces*).
2. After a maintainer agrees the skill fits, send a PR.
3. Update [README.md](README.md) — both the skill table and the install script's `SKILLS` array.
4. Run the installer locally to verify it loads in Claude Code.

## What we will reject

- Skills without a "When NOT to use" section.
- Skills whose output is a paragraph of advice instead of a structured artifact.
- Skills duplicating something already in the pack.
- "AI vibes" output formats — must be a concrete table, list, or fixed structure.
