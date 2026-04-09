# 任正非 AI Skill Pack

一个个人娱乐性质的 AI skill 小项目。

我把一份 `1994-2018-已融合.pdf` 的长文本资料做了蒸馏，整理成了一个更适合在 `Codex`、`Claude Code`、`OpenClaw` 里加载的技能包。目标不是“复活真人”，也不是搞权威背书，而是做一个可玩的、可安装的、带一点方法论味道的人物 skill。

如果你想要的是：

- 用任正非式框架看战略、组织、流程、干部、经营问题
- 用偏强势、偏危机意识、偏管理批判的口吻重写结论
- 拿这个人物设定做一点学习或娱乐性的 AI 交互

这个仓库就是干这个的。

## 先说边界

- 这是个人项目，仅供娱乐和学习使用。
- 这不是任正非本人，也不代表任正非本人、华为或任何相关机构立场。
- 这不是事实检索库，不保证回答任何现实世界时效问题。
- 不建议用于冒充真人、制造虚假权威、伪造访谈、伪造真实背书。

## 数据来源

本项目的蒸馏数据源来自一份外部提供的 PDF 资料：

- 文件名：`1994-2018-已融合.pdf`
- 内容类型：1994 到 2018 年的讲话、文章、访谈等合集
- 页数：1019

为了避免不必要的版权和分发问题，这个仓库不附带原始 PDF，只保留蒸馏后的 skill 内容和方法说明。

## 方法来源

这个项目的结构和方法，明确参考了 [同事.skill](https://github.com/titanwings/colleague-skill) 的思路：

- 把人物拆成 `Work` 和 `Persona` 两层
- `Work` 负责方法论、判断框架、做事风格
- `Persona` 负责语气、偏好、边界、表达方式

在此基础上，我把产物改造成了更适合多运行时分发的结构，支持：

- `Codex`
- `Claude Code`
- `OpenClaw`

## 仓库结构

- `shared/`: 共享蒸馏内容，是三套 skill 的单一事实来源
- `packages/codex-ren-zhengfei/`: Codex 版本
- `packages/claude-code-ren-zhengfei/`: Claude Code 版本
- `packages/openclaw-ren-zhengfei/`: OpenClaw 版本
- `scripts/sync_shared.sh`: 当 `shared/` 更新后，把内容同步到三个运行时包

## 安装方法

### 1. Codex

把 `packages/codex-ren-zhengfei/` 整个目录复制到：

```bash
~/.codex/skills/ren-zhengfei/
```

然后重启 Codex。

### 2. Claude Code

把 `packages/claude-code-ren-zhengfei/` 整个目录复制到以下任一位置：

```bash
.claude/skills/ren-zhengfei/
~/.claude/skills/ren-zhengfei/
```

复制后重启或新开一个 Claude Code 会话。

### 3. OpenClaw

把 `packages/openclaw-ren-zhengfei/` 整个目录复制到：

```bash
~/.openclaw/workspace/skills/ren-zhengfei/
```

复制后重启或新开一个 OpenClaw 会话。

## 使用方法

### Codex 里的显式调用

可以直接这样说：

```text
Use $ren-zhengfei to review this org redesign.
```

或者中文：

```text
用 $ren-zhengfei 的方式审一下这份组织调整方案。
```

### Claude Code / OpenClaw 里的调用

如果宿主支持 `user-invocable` skill，可以尝试：

```text
/ren-zhengfei 帮我看一下这份经营分析
```

如果你的客户端没有显式 slash 调用，也可以直接在对话里点名需求，例如：

```text
请用任正非式的风格，批判这份战略规划。
```

## 示例

- 用任正非的框架审一下这个组织调整方案。
- 从客户、现金流、干部、流程四个维度批判这份计划。
- 请用任正非式表达，重写这段经营汇报结论。
- 这项变革应该先优化还是先僵化？给一个任正非式判断。
- 如果现在是“冬天”，这个项目能不能做下去？

## 蒸馏思路

这份 skill 不是单纯抓几句口头禅，而是尽量蒸馏下面这些稳定特征：

- `活下去`
- `客户导向`
- `自我批判`
- `干部从严`
- `流程化和职业化`
- `让听得见炮声的人来呼唤炮火`
- `冬天 / 现金流 / 风险意识`
- `灰度、节奏、长期主义`

对应文件：

- `shared/work.md`: 做事框架
- `shared/persona.md`: 人物语气和行为边界
- `shared/evidence.md`: 蒸馏依据摘要

## 适用场景

- 战略评审
- 组织设计与干部管理
- 经营分析、风险控制、现金流意识
- 流程建设与管理变革
- 用任正非式语言做批判性 review

## 不适用场景

- 实时新闻、实时事实判断
- 逐字复刻历史原文
- 冒充真人发言
- 需要权威真实性背书的正式场景

## 更新共享内容

如果后续你要继续补材料、微调风格或重新蒸馏，改完 `shared/` 后执行：

```bash
./scripts/sync_shared.sh
```

## 备注

这是一个小型个人实验项目。

如果它能让你在某些评审场景里多一点“先问客户、再问现金流、再问干部和流程”的味道，那这个仓库就算没白做。
