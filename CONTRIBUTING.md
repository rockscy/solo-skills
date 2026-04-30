# Contributing to solo-skills

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

---

# 贡献指南（中文）

欢迎 PR。门槛是有意设高的，目的是保持技能包小而精。

## 接受的范围

- **单兵会遇到的问题。** 一个人每月或更频繁会做的事。
- **不接受需要团队的流程。** 不要预设有 code reviewer、设计师、PM、营销团队。
- **不接受通用技能。** 像"帮我总结文档"这类放自己包里——solo-skills 只收单兵场景。

## 必备结构

每个新技能必须有：

```
skills/<skill-name>/SKILL.md
```

`SKILL.md` 必须包含：

1. **Frontmatter**——`name` + `description`（包括做什么、何时触发）。
2. **`## When to use`**——具体场景。
3. **`## When NOT to use`**——至少三种反例。**强制要求。**
4. **框架/步骤**——具体可执行。
5. **`## Output format`**——固定模板，不能玄学。
6. **至少一个 worked example**——输入用引用块，输出用代码块。
7. **`## 中文版`** ——镜像英文结构。

## 风格

- 一条一句。需要两句就是在解释实现细节。
- 不加 emoji（除了真实示例里出现的）。
- 不要"很激动"、"很开心帮助"、"问得好"之类的废话。
- 结果用过去时，操作用祈使句。

## 流程

1. 先开 issue 一段话描述：*给谁用*、*何时触发*、*产出什么*。
2. 维护者认可方向后再发 PR。
3. 同步更新 [README.md](README.md) 表格和 install.sh 的 `SKILLS` 数组。
4. 本地跑一次安装脚本，确认能在 Claude Code 加载。

## 会被拒的 PR

- 没有 "When NOT to use" 段。
- 输出是一段建议性散文而不是结构化产物。
- 与已有技能重复。
- 输出格式靠 AI 玄学——必须是具体表格、列表或固定结构。
