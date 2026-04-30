# solo-skills

> 写给一个人发版的开发者用的 Claude Code 技能包。

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/skills-7-blue.svg)](#技能列表)

[English](README.md) | 简体中文

```bash
curl -fsSL https://raw.githubusercontent.com/rockscy/solo-skills/main/install.sh | bash
```

---

## 这是什么？

一套针对**单兵作战开发者 / 独立开发者 / 一人公司**的 [Claude Code](https://claude.com/claude-code) 技能包。覆盖每天真正在做的事：写发布推文、回复棘手的客户邮件、做 5 分钟的单兵站会、把含糊的 bug 反馈转成可执行的工单、独自做产品决策。

市面上大多数 skill 包默认你有团队。**这个默认你没有。**

---

## 为什么？

| | 大多数 skill 包 | solo-skills |
|---|---|---|
| 受众 | "通用工程师" | 独立开发者、一人公司 |
| 边界 | 只写 "Use when…" | "Use when…" **+ "Do NOT use when…"** |
| 示例 | 偏抽象 | 每个技能都有 worked input → output |
| 安装 | 手动复制 | 一行 `curl \| bash` |

**"何时不要用"** 是核心差异。错用框架是单兵开发者周末浪费时间的头号原因。本包每个 skill 都明确告诉你什么时候**不要**触发它。

---

## 技能列表

| Skill | 做什么 |
|---|---|
| [ship-decision](skills/ship-decision/SKILL.md) | 在 2–3 个产品选项之间快速做出最小遗憾决策 |
| [launch-tweet](skills/launch-tweet/SKILL.md) | 起草一条单推或 3–4 条线程，零营销腔 |
| [changelog-from-commits](skills/changelog-from-commits/SKILL.md) | 把 git log 转成面向用户的更新日志 |
| [bug-from-user](skills/bug-from-user/SKILL.md) | 把含糊的客户反馈转成可复现的 bug 单 |
| [standup-solo](skills/standup-solo/SKILL.md) | 5 分钟单兵站会：交付 / 阻塞 / 今日头号任务 |
| [email-customer](skills/email-customer/SKILL.md) | 礼貌但坚定地回复退款、范围蔓延、投诉 |
| [postmortem-solo](skills/postmortem-solo/SKILL.md) | ≤350 字、不归罪的复盘模板 |

---

## 安装

### 方式 1：一行命令（推荐）

```bash
curl -fsSL https://raw.githubusercontent.com/rockscy/solo-skills/main/install.sh | bash
```

会把 7 个技能目录放进 `~/.claude/skills/`。已存在的同名文件**绝不**会被覆盖——安装脚本会跳过并告诉你跳过了哪些。

### 方式 2：手动安装

```bash
git clone https://github.com/rockscy/solo-skills.git
cp -r solo-skills/skills/* ~/.claude/skills/
```

### 验证

打开 Claude Code 输入 `/`，应该能在技能列表里看到 `ship-decision`、`launch-tweet` 等。

---

## 怎么用

在任何 Claude Code 会话中，描述匹配场景时这些技能会自动触发，也可以显式调用：

```
/launch-tweet

帮我写一条发布推文，产品是 solo-skills，免费 MIT，链接 github.com/rockscy/solo-skills
```

Claude 会读取 `SKILL.md`、套用框架、按指定格式输出。

---

## 设计原则

1. **边界优先。** 每个技能都先写 *何时不要用*。错的技能比不用还糟。
2. **一句胜过一段。** 输出格式强制简洁。
3. **展示 input → output。** 每个技能都有具体示例，不是空谈。
4. **不要官腔。** 不写"很激动"，不写"依据我们的政策"，不靠 emoji 装饰。

---

## 贡献

欢迎 PR。请阅读 [CONTRIBUTING.zh.md](CONTRIBUTING.zh.md)。门槛：

- 解决单兵开发者**每月或更频繁**遇到的真实问题。
- 必须有 "When NOT to use" 段落（强制要求）。
- 至少一个 worked input → output 示例。
- 输出格式具体（表格、结构化文本、固定段落）——不要 "be helpful" 玄学。

---

## License

[MIT](LICENSE) —— 复制、修改、发布、商用都行。无需注明出处，但欢迎注明。
