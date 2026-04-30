# solo-skills

> Claude Code skills for people who ship alone.
> 写给一个人发版的开发者用的 Claude Code 技能包。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-7-blue.svg)](#skills--技能列表)
[![Bilingual](https://img.shields.io/badge/EN-中文-purple.svg)](#)

```bash
curl -fsSL https://raw.githubusercontent.com/rockscy/solo-skills/main/install.sh | bash
```

---

## What is this? / 这是什么？

**EN —** A small, opinionated set of [Claude Code](https://claude.com/claude-code) skills for the tasks solo founders and indie devs actually do every day: writing launch tweets, replying to awkward customer emails, running a 5-minute personal standup, turning a vague bug report into something actionable, deciding what to ship next when you're alone with the call.

Most skill packs assume you have a team. **This one assumes you don't.**

**中文 —** 一套针对**单兵作战开发者 / 独立开发者 / 一人公司**的 Claude Code 技能包。覆盖每天真正在做的事：写发布推文、回复棘手的客户邮件、做 5 分钟的单兵站会、把含糊的 bug 反馈转成可执行的工单、独自做产品决策。

市面上大多数 skill 包默认你有团队。**这个默认你没有。**

---

## Why? / 为什么？

| | Most skill packs | solo-skills |
|---|---|---|
| Audience / 受众 | "Real engineers" (broad) | Solo founders, indie devs |
| Language / 语言 | English-only | EN + 中文 (every skill) |
| Boundaries / 边界 | "Use when…" only | "Use when…" **AND "Do NOT use when…"** |
| Examples / 示例 | Often abstract | Worked input → output for every skill |
| Install / 安装 | Manual copy | One-line `curl \| bash` |

The **"Do NOT use when…"** section is the core differentiator. Force-applying a framework when it doesn't fit is the #1 way solo devs waste a Saturday. Every skill in this pack tells you when it should *not* fire.

> **关键差异：** 每个 skill 都有 **"何时不要用"** 一节。这是单兵开发者最常踩的坑——错用框架浪费一整天。本包每个 skill 都明确告诉你什么时候**不要**触发它。

---

## Skills / 技能列表

| Skill | What it does / 做什么 |
|---|---|
| [ship-decision](skills/ship-decision/SKILL.md) | Force a fast, regret-minimizing call between 2–3 product options. / 在 2–3 个产品选项之间快速做出最小遗憾决策。 |
| [launch-tweet](skills/launch-tweet/SKILL.md) | Draft a launch tweet or 3–4 tweet thread, no hype words. / 起草一条单推或 3–4 条线程，零营销腔。 |
| [changelog-from-commits](skills/changelog-from-commits/SKILL.md) | Convert raw git log into user-facing release notes. / 把 git log 转成面向用户的更新日志。 |
| [bug-from-user](skills/bug-from-user/SKILL.md) | Convert a confusing customer message into a reproducible bug report. / 把含糊的客户反馈转成可复现的 bug 单。 |
| [standup-solo](skills/standup-solo/SKILL.md) | 5-minute personal standup: shipped / blocked / today's #1. / 5 分钟单兵站会：交付 / 阻塞 / 今日头号任务。 |
| [email-customer](skills/email-customer/SKILL.md) | Polite-but-firm reply to refunds, scope creep, complaints. / 礼貌但坚定地回复退款 / 范围蔓延 / 投诉。 |
| [postmortem-solo](skills/postmortem-solo/SKILL.md) | ≤350-word blame-free postmortem after a missed deadline or outage. / ≤350 字、不归罪的复盘模板。 |

---

## Install / 安装

### Option 1: One-liner (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/rockscy/solo-skills/main/install.sh | bash
```

This drops the seven skill directories into `~/.claude/skills/`. Existing files of the same name are **never** overwritten — the installer skips them and tells you which.

### Option 2: Manual

```bash
git clone https://github.com/rockscy/solo-skills.git
cp -r solo-skills/skills/* ~/.claude/skills/
```

### Verify

Open Claude Code and type `/`. You should see `ship-decision`, `launch-tweet`, etc. in the skill list.

打开 Claude Code 输入 `/`，应该能在技能列表里看到 `ship-decision`、`launch-tweet` 等。

---

## How to use / 怎么用

Inside any Claude Code session, the skills auto-trigger when you describe a matching situation. You can also invoke explicitly:

```
/ship-decision

I'm stuck choosing between rebuilding my landing page in Framer or sticking with my hand-coded Next.js page. I have ~6 hours of focused time this weekend.
```

Claude reads `SKILL.md`, applies the framework, and responds in the prescribed format.

在任何 Claude Code 会话中，描述匹配场景时这些技能会自动触发，也可以显式调用：

```
/launch-tweet

帮我写一条发布推文，产品是 solo-skills，免费 MIT，链接 github.com/rockscy/solo-skills
```

---

## Design principles / 设计原则

1. **Boundaries first.** Every skill leads with *when not to use*. Wrong skill > no skill.
2. **One sentence beats one paragraph.** Output formats enforce brevity.
3. **Show input → output.** Every skill includes a worked example, not just guidelines.
4. **Bilingual content.** Every skill has parallel Chinese sections for non-English-first devs.
5. **No corporate voice.** No "I'm excited", no "per our policy", no emoji decoration.

---

## Contributing / 贡献

PRs welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md). The bar:

- Skill solves a real problem a solo dev hits **monthly or more often**.
- Has a "When NOT to use" section. (Hard requirement.)
- Has at least one worked input → output example.
- Bilingual EN + 中文.
- Output format is concrete (table, structured text, fixed sections) — no "be helpful" vibes.

---

## License

[MIT](LICENSE) — copy, modify, ship, sell. No attribution required, but it's appreciated.
