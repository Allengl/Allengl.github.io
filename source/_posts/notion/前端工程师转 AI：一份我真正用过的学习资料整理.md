---
date: 2026-05-01 00:00:00
created: 2026-05-01 08:30:00
updated: 2026-05-01 08:54:00
title: 前端工程师转 AI：一份我真正用过的学习资料整理
cover: https://app.notion.com/images/page-cover/solid_beige.png
id: 353260b3-9251-80fa-a48c-d0ec886816c8
---

过去一段时间，我从前端逐渐开始接触 AI 相关开发。

一开始其实挺懵的——

Prompt、Agent、RAG、Tool Calling，各种概念一股脑冒出来，很难建立整体理解。

后来慢慢发现一个关键点：

> AI 工程，本质上和前端一样，是“系统设计”，不是“单点技术”。

这篇文章，我把自己实际用过的一些资料整理了一下，按**前端更容易理解的方式**重新组织了一遍。

---

## 一、Agent Workflow：像在写一个“有状态的前端应用”

如果用前端的视角来看：

> Agent Workflow ≈ 一个有状态的流程应用（有点像 Redux + 状态机）

你可以把它理解成：

- 用户输入 = 用户操作
- Agent = 控制层
- Workflow = 页面逻辑 / 状态流转
- Tool = API 调用

它解决的问题其实很熟悉：

> 当一个任务不是“一次请求就结束”，而是多步骤 + 有分支 + 有状态时，怎么组织？

比如：

- 用户说一句话
- 系统判断意图
- 走不同流程
- 中间可能还要多次调用接口

这已经很像我们在前端写复杂交互了。

### 学习资料

- [LangGraph 官方文档](https://docs.langchain.com/oss/python/langgraph/overview) —— 快速建立 Agent Workflow 的整体认知
- [deeplearning.ai 教程：AI Agents in LangGraph](https://www.deeplearning.ai/short-courses/ai-agents-in-langgraph/) —— 实践教程，教你把 workflow、persistence、streaming 这些能力串起来
- [Multi-Agent Workflow 视频](https://www.youtube.com/watch?v=hvAPnpSfSGo&themeRefresh=1) —— 学习多 Agent 的组织方式，比如 supervisor、路由、分工和上下文传递

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/3390b18f-bdd8-46bc-b7cd-0a621d33699e/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466THQI6VTN%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085505Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJIMEYCIQDLnAA%2FG8g2QLll01VIGWpG%2Fs0gPaOxrW%2BLyp%2FsT%2B7fIgIhAJmm2KD8y6H6yEZhjQxMDqNYoAaKwAArYs53WFvEOq00Kv8DCCEQABoMNjM3NDIzMTgzODA1IgwczFr5KdNHsrXG55gq3AMYJ5hBnVmu%2Fwt9xM4nuQT%2B4dFToQI7Kh5cNT2phMZLKY69HZ1Pnm3cJO6Jt2wRPbqdDCtk0o0UMtTpTkEpBrRCEj7wTTiZER%2FhMr8mou3tV405CqnNSy02hJHCGDvkSVLizJKRbmcas4%2BF7w3bEuKHQ5%2FpskxW7UZaK3jU%2Fn7Z1VDznFqCB%2ByUKTqZ5U0epXv3Ii4Ew8IBocz%2Bg8BKFw3NpbhJ75SuGAWuuW0XTFeTiOjvmnkdtJXLtB9NRQz4MAdnqUJMNVzc2me5K22XeWztS9FAE1QzFktH7czj8rvGR0Fg5evFHwaaLLB02BPGT2HjvuGkKxi9BQc0bWL714oyJHuw%2FT9UR6siIz%2FBIPedXuU5tGsmhLoMWvNFf6PgacAYaVBpfFCdSx%2FpSjLDQj9HdWJjVPsSifZpbi7UaY%2FvehJ4PqheL80kM6mjpgqf3MdkzCS5ayl9Vq7ri1o4KyguyCHZ%2FiYG6pSWSJNpYy0CnOCrqSOxbzFUXwQ5S%2F9M5IcXpezmHANxPauSP79TSmRE88jo7Fd3gjqJd6h1TJZI1zdyquithExxRpaB7RqHsHTYn%2FnCAJoHDetxCZYjRdboeY4CgaUs9IofZF7VNVB0Sqw%2B8NCd8dN8C9nEuTCvvtHPBjqkAe%2FMC%2Fs%2BC37zhcJs5jeyK%2BKoMwZIhGG%2BNXCUjyy%2FmOeW48HoBdQlXhp1Fn%2BLtCedUwBlUikf%2BP7yOVNgWnlrq7vgr%2F7xupo2p1BL%2Fuv1AbMR0Q%2BGaWluBTiGVd%2FL38dI2KgJ9jsw49emnlHXIqYQ0jb%2Fi9ompCm6exQhJ1%2F3z2MqS2x1MM8vmZvNMaTMu6Hpwd9yuuR7b1Sl8dE5a17tY7KbJCCV&X-Amz-Signature=1dbd89983989288006c3a800fe822049e8840e23027a52d98363473a41e00a4a&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 二、Tool Calling：就是 AI 在“发请求”

这一块如果用前端理解，其实非常简单：

> Tool Calling ≈ 前端调用 API

只是区别在于：

以前是你写代码决定调用哪个 API，

现在是 **模型自己决定要不要调用哪个工具**。

流程可以类比成：

```javascript
// 以前
fetch('/api/getPrice', { symbol: 'ETH' })

// 现在（AI 内部）
{
  "tool": "getPrice",
  "params": { "symbol": "ETH" }
}
```

真正难的不是“调用”，而是：

> 怎么设计接口，让模型“选得对”。

这有点像：

- API 设计
- 命名语义
- 参数结构

### 学习资料

- [OpenAI Cookbook（函数调用）](https://cookbook.openai.com/examples/how_to_call_functions_with_chat_models)—— 函数调用很经典的入门材料，基本接口、参数设计和执行流程都能摸清楚。
- [Anthropic Tool Use 指南](https://docs.anthropic.com/en/docs/build-with-claude/tool-use) —— 更偏工程实践，重点在怎么让模型更稳定地选择工具、组织输入输出。

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/36173ccc-0cad-4cf3-bed0-ccdadf82169f/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466THQI6VTN%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085505Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJIMEYCIQDLnAA%2FG8g2QLll01VIGWpG%2Fs0gPaOxrW%2BLyp%2FsT%2B7fIgIhAJmm2KD8y6H6yEZhjQxMDqNYoAaKwAArYs53WFvEOq00Kv8DCCEQABoMNjM3NDIzMTgzODA1IgwczFr5KdNHsrXG55gq3AMYJ5hBnVmu%2Fwt9xM4nuQT%2B4dFToQI7Kh5cNT2phMZLKY69HZ1Pnm3cJO6Jt2wRPbqdDCtk0o0UMtTpTkEpBrRCEj7wTTiZER%2FhMr8mou3tV405CqnNSy02hJHCGDvkSVLizJKRbmcas4%2BF7w3bEuKHQ5%2FpskxW7UZaK3jU%2Fn7Z1VDznFqCB%2ByUKTqZ5U0epXv3Ii4Ew8IBocz%2Bg8BKFw3NpbhJ75SuGAWuuW0XTFeTiOjvmnkdtJXLtB9NRQz4MAdnqUJMNVzc2me5K22XeWztS9FAE1QzFktH7czj8rvGR0Fg5evFHwaaLLB02BPGT2HjvuGkKxi9BQc0bWL714oyJHuw%2FT9UR6siIz%2FBIPedXuU5tGsmhLoMWvNFf6PgacAYaVBpfFCdSx%2FpSjLDQj9HdWJjVPsSifZpbi7UaY%2FvehJ4PqheL80kM6mjpgqf3MdkzCS5ayl9Vq7ri1o4KyguyCHZ%2FiYG6pSWSJNpYy0CnOCrqSOxbzFUXwQ5S%2F9M5IcXpezmHANxPauSP79TSmRE88jo7Fd3gjqJd6h1TJZI1zdyquithExxRpaB7RqHsHTYn%2FnCAJoHDetxCZYjRdboeY4CgaUs9IofZF7VNVB0Sqw%2B8NCd8dN8C9nEuTCvvtHPBjqkAe%2FMC%2Fs%2BC37zhcJs5jeyK%2BKoMwZIhGG%2BNXCUjyy%2FmOeW48HoBdQlXhp1Fn%2BLtCedUwBlUikf%2BP7yOVNgWnlrq7vgr%2F7xupo2p1BL%2Fuv1AbMR0Q%2BGaWluBTiGVd%2FL38dI2KgJ9jsw49emnlHXIqYQ0jb%2Fi9ompCm6exQhJ1%2F3z2MqS2x1MM8vmZvNMaTMu6Hpwd9yuuR7b1Sl8dE5a17tY7KbJCCV&X-Amz-Signature=e51b838dbb02b7442b48b06d60ee648f3cf4a09f651c0edb03575a9d75c90d02&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 三、Persistence：像前端的“全局状态 + 本地缓存”

刚开始做 AI，很容易踩一个坑：

> 每次请求都是“全新的一次”，没有状态。

但真实场景里，我们其实很依赖状态，比如：

- 表单填写进度
- 多步骤流程
- 用户操作历史

在前端我们会用：

- Redux / Zustand
- localStorage
- sessionStorage

而在 AI 里，这一层就是：

> Persistence（持久化）

它解决的问题是：

- Agent 执行到一半可以恢复
- 可以跨步骤继续
- 可以 replay（有点像 devtools time travel）

### 学习资料

- [LangGraph Persistence](https://langchain-ai.github.io/langgraph/concepts/persistence/) —— 能快速看清为什么 Agent 需要状态持久化，以及 thread 级别状态怎么保存。
- [视频讲解](https://www.youtube.com/watch?v=YE6A5d8kNp4) —— 适合作为视频版补充，帮助建立 Persistence 的使用直觉。

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/c7ac0924-323e-4cbd-9af7-c8e41dca27e7/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466THQI6VTN%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085506Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJIMEYCIQDLnAA%2FG8g2QLll01VIGWpG%2Fs0gPaOxrW%2BLyp%2FsT%2B7fIgIhAJmm2KD8y6H6yEZhjQxMDqNYoAaKwAArYs53WFvEOq00Kv8DCCEQABoMNjM3NDIzMTgzODA1IgwczFr5KdNHsrXG55gq3AMYJ5hBnVmu%2Fwt9xM4nuQT%2B4dFToQI7Kh5cNT2phMZLKY69HZ1Pnm3cJO6Jt2wRPbqdDCtk0o0UMtTpTkEpBrRCEj7wTTiZER%2FhMr8mou3tV405CqnNSy02hJHCGDvkSVLizJKRbmcas4%2BF7w3bEuKHQ5%2FpskxW7UZaK3jU%2Fn7Z1VDznFqCB%2ByUKTqZ5U0epXv3Ii4Ew8IBocz%2Bg8BKFw3NpbhJ75SuGAWuuW0XTFeTiOjvmnkdtJXLtB9NRQz4MAdnqUJMNVzc2me5K22XeWztS9FAE1QzFktH7czj8rvGR0Fg5evFHwaaLLB02BPGT2HjvuGkKxi9BQc0bWL714oyJHuw%2FT9UR6siIz%2FBIPedXuU5tGsmhLoMWvNFf6PgacAYaVBpfFCdSx%2FpSjLDQj9HdWJjVPsSifZpbi7UaY%2FvehJ4PqheL80kM6mjpgqf3MdkzCS5ayl9Vq7ri1o4KyguyCHZ%2FiYG6pSWSJNpYy0CnOCrqSOxbzFUXwQ5S%2F9M5IcXpezmHANxPauSP79TSmRE88jo7Fd3gjqJd6h1TJZI1zdyquithExxRpaB7RqHsHTYn%2FnCAJoHDetxCZYjRdboeY4CgaUs9IofZF7VNVB0Sqw%2B8NCd8dN8C9nEuTCvvtHPBjqkAe%2FMC%2Fs%2BC37zhcJs5jeyK%2BKoMwZIhGG%2BNXCUjyy%2FmOeW48HoBdQlXhp1Fn%2BLtCedUwBlUikf%2BP7yOVNgWnlrq7vgr%2F7xupo2p1BL%2Fuv1AbMR0Q%2BGaWluBTiGVd%2FL38dI2KgJ9jsw49emnlHXIqYQ0jb%2Fi9ompCm6exQhJ1%2F3z2MqS2x1MM8vmZvNMaTMu6Hpwd9yuuR7b1Sl8dE5a17tY7KbJCCV&X-Amz-Signature=98328b1bd4b410eaa3e61c8d8761b33f216ddf429de437ef9c5432a2097ebb74&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 四、Memory：AI 的“用户数据层”

Persistence 更偏“流程状态”，而 Memory 更像：

> 用户数据 + 长期上下文

可以理解成：

- 短期记忆 → 当前页面 state
- 长期记忆 → 后端数据库 / 用户 profile

比如：

- 用户偏好
- 历史行为
- 之前聊过的内容

这一步其实很像在设计：

> 一个“给 AI 用的数据层”

### 学习资料

- [Memory & Store API](https://langchain-ai.github.io/langgraph/concepts/memory/) —— 关于短期记忆、长期记忆和外部存储的分工。
- [跨会话记忆](https://langchain-ai.github.io/langgraph/how-tos/cross-thread-persistence/) —— “跨会话记忆”的实现指南。

![](https://cdn.jsdelivr.net/gh/Allengl/Allengl.github.io@main/img/c4e69808-0e54-421e-80c2-8e8e1f169339.png)

---

## 五、Prompt Engineering：像在写“函数调用说明书”

一开始我对 prompt 的理解是“写一段话”。

后来才发现更像是：

> 写一个“函数说明文档”

你需要明确：

- 输入是什么
- 输出要什么格式
- 边界条件
- 示例

这其实和我们写 API 文档、写类型定义很像。

写得好的 prompt，一般都有几个特点：

- 目标清晰
- 结构明确
- 输入输出稳定

### 学习资料

- [Anthropic Prompt Best Practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices) —— Prompt 的最佳实践。
- [OpenAI Prompt Guide](https://platform.openai.com/docs/guides/prompt-engineering) —— Prompt Engineering 的核心策略。

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/73219565-3737-4058-bae6-6db93ffb2d4a/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4664OV6GDZ7%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085506Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCIAKmsuHFxVhesFHoG4qBF4r6B6206CDr8dNjiQuNL3hzAiEAzhL9bd1pytAsPoGaamWAo922kr8vBr4P2sD7Tr0AYEMq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDJtr7ISgC26UaRxN3SrcAxWj%2Bvf39Ro5yvaTp0TXEYjKpFU98aAi5Y%2B6K2vy2pKe1d7Xm7gjIDwe5ErVt5ClYUYtVAx5GdYX6etVFXG0zWzeT3vBs5Z%2Bq30jd1d32yytPtN%2FS0cylSPa9aQ1Yf8JgezyWKTgx0u2CJSyafA8TtEgOxfrrl72wRp4146MCu6%2F9N41UKJAnRMeUlk3UC73sYbT72jb%2BpQAG1ndLlKQeSfu%2Fy4gKP5SRs8IFF72uRJyTdp5yRNiSL2gRwuVTq6PkEXuUOlSFqsVW%2FPNGdiXUXm58FLMB3uEKnA3Sx5B5QvpwkDaOWou7mPE3tcuWrDZO7Tj4%2Fu%2FkLuc93q32BfS0Jynms5dkHcyvCdGuJqyEkjGnoARsWOKcCHC98Tm8YvkjreouXhSAUMCKz1n2UepTzl0VdVt%2B5MmJYpaH66QN6TIUikgoqZmE0yWLviStNLV2Udhof2SNE%2F0lLWpC6oYvHuQmY3j8itPsC22BkZBKQEA5nMULIrrby4BO%2Fk3QN8FKemtzZmBGN6muwHngSIg8kfr9a4gosNjEf%2Fa1I291PuLDim7kfJXOK7Bz1K%2F2krTIbWweW8%2BM7RyMHYmVUJ6gD2cKO48s%2FXCgdbJjYTR6FVJGAsksyEz%2BDjLNtpYMOW%2F0c8GOqUBGPM5g%2FHikzumsEG3jSnzis8%2BmxzA%2Byo8%2Fe5Zd4OkVNFdzUOOvqnTTP42%2F33VKf45UlcdKX1NV9etYr1U%2BGIChm5PaeWe2w9Cf%2BC5dUwfCFq5j2uqWKpEWBIcAKsT1oowgBK5L0nO%2FnZ6cc44Z2MJNpEjswPIdyxHSVuJcKK4rsHqcJnkBUkMFot6%2FTBL70bX5vJauQJw7kYfuUNDVhMqc4oJLHJq&X-Amz-Signature=1bca2472bda3e2a814f5e1bbdc6d782e335326ec57797e0c102ed13f3d2f69db&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 六、Skill Engineering：像“组件化 / hooks 抽象”

如果说 prompt 是一次性代码，那 skill 更像：

> 可复用组件 / hooks

它会把一整套能力封装起来，比如：

- 一段 prompt
- 一套流程
- 一些工具调用

然后在需要的时候再加载。

这和前端很像：

- 不再复制代码
- 而是做抽象
- 按需使用

关键在于：

- 命名（很重要）
- description（类似 props 类型说明）
- 什么时候加载

### 学习资料

- [Skills 概览](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) —— Skill 和 prompt 的区别、Skill 架构、按需加载机制。
- [Best Practices](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices) —— Skill 的编写规范、命名方式、description 设计。
- [Quickstart](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/quickstart) —— Skill 在 API 中的接入方式。

![](https://cdn.jsdelivr.net/gh/Allengl/Allengl.github.io@main/img/53a9b8f8-89bf-4c84-af01-2782f4d37ab1.png)

---

## 七、Evaluation：像前端的“自动化测试”

如果不做评测，你会很快进入一种状态：

> 改了 prompt，但不知道是变好了还是变差了

这和前端不写测试是一样的。

Evaluation 本质上就是：

- 准备测试数据
- 跑一遍
- 看结果
- 找失败 case

有点像：

- 单测（unit test）
- e2e 测试

### 学习资料

- [Agent Skills（SDK）](https://code.claude.com/docs/en/agent-sdk/skills) —— `SKILL.md` 组织方式和 Skill 发现机制。
- [OpenAI Evaluation](https://platform.openai.com/docs/guides/evaluation-best-practices) —— Prompt / Skill 的评测方法。

![](https://cdn.jsdelivr.net/gh/Allengl/Allengl.github.io@main/img/4f5dd3d5-a063-47ff-bfab-297f1b12a8b0.png)

---

## 八、MCP Server：像“给 AI 写一个 SDK”

这一块如果用前端理解：

> MCP ≈ 给 AI 提供的一层 SDK / API 网关

你可以把它理解为：

- 把后端能力包装起来
- 让 AI 能调用
- 并且是标准化的

有点类似：

- BFF（Backend For Frontend）
- 或 SDK 层

### 学习资料

- [MCP 官方文档](https://modelcontextprotocol.io/docs/getting-started/intro) —— 从入门到实作的一组官方教程，涵盖 MCP 相关技术、server 接入、以及从零搭建 server 的 quickstart。
- [实战视频](https://www.youtube.com/watch?v=k_l_wKz1k1c) —— 从零搭建 MCP Server 的实战示例。
- [开源实现](https://github.com/modelcontextprotocol/servers) —— 官方维护的 MCP reference servers 仓库，用不同类型的 server 展示 MCP 的实现方式。

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/4245fcd0-de11-4110-a227-536aba9710da/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4664OV6GDZ7%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085506Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCIAKmsuHFxVhesFHoG4qBF4r6B6206CDr8dNjiQuNL3hzAiEAzhL9bd1pytAsPoGaamWAo922kr8vBr4P2sD7Tr0AYEMq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDJtr7ISgC26UaRxN3SrcAxWj%2Bvf39Ro5yvaTp0TXEYjKpFU98aAi5Y%2B6K2vy2pKe1d7Xm7gjIDwe5ErVt5ClYUYtVAx5GdYX6etVFXG0zWzeT3vBs5Z%2Bq30jd1d32yytPtN%2FS0cylSPa9aQ1Yf8JgezyWKTgx0u2CJSyafA8TtEgOxfrrl72wRp4146MCu6%2F9N41UKJAnRMeUlk3UC73sYbT72jb%2BpQAG1ndLlKQeSfu%2Fy4gKP5SRs8IFF72uRJyTdp5yRNiSL2gRwuVTq6PkEXuUOlSFqsVW%2FPNGdiXUXm58FLMB3uEKnA3Sx5B5QvpwkDaOWou7mPE3tcuWrDZO7Tj4%2Fu%2FkLuc93q32BfS0Jynms5dkHcyvCdGuJqyEkjGnoARsWOKcCHC98Tm8YvkjreouXhSAUMCKz1n2UepTzl0VdVt%2B5MmJYpaH66QN6TIUikgoqZmE0yWLviStNLV2Udhof2SNE%2F0lLWpC6oYvHuQmY3j8itPsC22BkZBKQEA5nMULIrrby4BO%2Fk3QN8FKemtzZmBGN6muwHngSIg8kfr9a4gosNjEf%2Fa1I291PuLDim7kfJXOK7Bz1K%2F2krTIbWweW8%2BM7RyMHYmVUJ6gD2cKO48s%2FXCgdbJjYTR6FVJGAsksyEz%2BDjLNtpYMOW%2F0c8GOqUBGPM5g%2FHikzumsEG3jSnzis8%2BmxzA%2Byo8%2Fe5Zd4OkVNFdzUOOvqnTTP42%2F33VKf45UlcdKX1NV9etYr1U%2BGIChm5PaeWe2w9Cf%2BC5dUwfCFq5j2uqWKpEWBIcAKsT1oowgBK5L0nO%2FnZ6cc44Z2MJNpEjswPIdyxHSVuJcKK4rsHqcJnkBUkMFot6%2FTBL70bX5vJauQJw7kYfuUNDVhMqc4oJLHJq&X-Amz-Signature=35a05f2dd8abd5b193405850f5fe769eacdd25f0748a6466886c4b439b2bc26e&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 九、RAG：像“带搜索能力的数据源”

RAG 可以理解为：

> AI + 搜索引擎

它解决的问题是：

- 模型不知道你的数据
- 但你可以“临时查给它看”

流程类似：

1. 搜索（检索文档）
2. 拼到上下文
3. 再生成答案

这其实很像：

- 前端先调搜索接口
- 再渲染页面

区别只是：AI 会帮你“总结”。

### 学习资料

- [LangChain RAG](https://docs.langchain.com/oss/javascript/langchain/rag) —— 用 LangChain 搭建 RAG agent 和两步式 RAG 流程。
- [RAG 评测](https://docs.langchain.com/langsmith/evaluate-rag-tutorial) —— RAG 应用的评测方法，包括回答质量和检索效果。

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/c44dd0d8-8cb1-49a0-b242-01cb387b6159/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4664OV6GDZ7%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085506Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCIAKmsuHFxVhesFHoG4qBF4r6B6206CDr8dNjiQuNL3hzAiEAzhL9bd1pytAsPoGaamWAo922kr8vBr4P2sD7Tr0AYEMq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDJtr7ISgC26UaRxN3SrcAxWj%2Bvf39Ro5yvaTp0TXEYjKpFU98aAi5Y%2B6K2vy2pKe1d7Xm7gjIDwe5ErVt5ClYUYtVAx5GdYX6etVFXG0zWzeT3vBs5Z%2Bq30jd1d32yytPtN%2FS0cylSPa9aQ1Yf8JgezyWKTgx0u2CJSyafA8TtEgOxfrrl72wRp4146MCu6%2F9N41UKJAnRMeUlk3UC73sYbT72jb%2BpQAG1ndLlKQeSfu%2Fy4gKP5SRs8IFF72uRJyTdp5yRNiSL2gRwuVTq6PkEXuUOlSFqsVW%2FPNGdiXUXm58FLMB3uEKnA3Sx5B5QvpwkDaOWou7mPE3tcuWrDZO7Tj4%2Fu%2FkLuc93q32BfS0Jynms5dkHcyvCdGuJqyEkjGnoARsWOKcCHC98Tm8YvkjreouXhSAUMCKz1n2UepTzl0VdVt%2B5MmJYpaH66QN6TIUikgoqZmE0yWLviStNLV2Udhof2SNE%2F0lLWpC6oYvHuQmY3j8itPsC22BkZBKQEA5nMULIrrby4BO%2Fk3QN8FKemtzZmBGN6muwHngSIg8kfr9a4gosNjEf%2Fa1I291PuLDim7kfJXOK7Bz1K%2F2krTIbWweW8%2BM7RyMHYmVUJ6gD2cKO48s%2FXCgdbJjYTR6FVJGAsksyEz%2BDjLNtpYMOW%2F0c8GOqUBGPM5g%2FHikzumsEG3jSnzis8%2BmxzA%2Byo8%2Fe5Zd4OkVNFdzUOOvqnTTP42%2F33VKf45UlcdKX1NV9etYr1U%2BGIChm5PaeWe2w9Cf%2BC5dUwfCFq5j2uqWKpEWBIcAKsT1oowgBK5L0nO%2FnZ6cc44Z2MJNpEjswPIdyxHSVuJcKK4rsHqcJnkBUkMFot6%2FTBL70bX5vJauQJw7kYfuUNDVhMqc4oJLHJq&X-Amz-Signature=6ec48946ee7fbee4fe6ad5b0afa6a95ef531e2ccf3d30ef74004b06c2e88067a&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

---

## 最后

如果用一句话总结这条路径：

> 从“写页面的人”，变成“设计系统的人”。

你会发现很多东西其实并不陌生：

- Workflow → 状态流转
- Tool → API 调用
- Memory → 数据层
- Skill → 组件抽象
- Eval → 测试体系

换了一套技术栈，但思维其实是连贯的。

如果你是前端，这条路没有想象中那么难，只是需要重新建立一套映射关系。
