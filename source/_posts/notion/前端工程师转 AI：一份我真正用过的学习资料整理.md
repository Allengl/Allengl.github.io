---
date: 2026-05-01 00:00:00
created: 2026-05-01 08:30:00
updated: 2026-05-01 08:37:00
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

- [LangGraph 官方文档](https://docs.langchain.com/oss/python/langgraph/overview)
- [deeplearning.ai 教程：AI Agents in LangGraph](https://www.deeplearning.ai/short-courses/ai-agents-in-langgraph/)
- [Multi-Agent Workflow 视频](https://www.youtube.com/watch?v=hvAPnpSfSGo&themeRefresh=1)

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

- [OpenAI Cookbook（函数调用）](https://cookbook.openai.com/examples/how_to_call_functions_with_chat_models)
- [Anthropic Tool Use 指南](https://docs.anthropic.com/en/docs/build-with-claude/tool-use)

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

- [LangGraph Persistence](https://langchain-ai.github.io/langgraph/concepts/persistence/)
- [视频讲解](https://www.youtube.com/watch?v=YE6A5d8kNp4)

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

- [Memory & Store API](https://langchain-ai.github.io/langgraph/concepts/memory/)
- [跨会话记忆](https://langchain-ai.github.io/langgraph/how-tos/cross-thread-persistence/)

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

- [Anthropic Prompt Best Practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices)
- [OpenAI Prompt Guide](https://platform.openai.com/docs/guides/prompt-engineering)

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

- [Skills 概览](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
- [Best Practices](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices)
- [Quickstart](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/quickstart)

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

- [Agent Skills（SDK）](https://code.claude.com/docs/en/agent-sdk/skills)
- [OpenAI Evaluation](https://platform.openai.com/docs/guides/evaluation-best-practices)

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

- [MCP 官方文档](https://modelcontextprotocol.io/docs/getting-started/intro)
- [实战视频](https://www.youtube.com/watch?v=k_l_wKz1k1c)
- [开源实现](https://github.com/modelcontextprotocol/servers)

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

- [LangChain RAG](https://docs.langchain.com/oss/javascript/langchain/rag)
- [RAG 评测](https://docs.langchain.com/langsmith/evaluate-rag-tutorial)

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
