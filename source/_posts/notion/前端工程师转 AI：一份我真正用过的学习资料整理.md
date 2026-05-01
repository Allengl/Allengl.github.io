---
date: 2026-05-01 00:00:00
created: 2026-05-01 08:30:00
updated: 2026-05-01 08:59:00
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

![](https://cdn.jsdelivr.net/gh/Allengl/Allengl.github.io@main/img/3390b18f-bdd8-46bc-b7cd-0a621d33699e.png)

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

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/36173ccc-0cad-4cf3-bed0-ccdadf82169f/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4664AKMG5Z5%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085914Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJGMEQCIGMw%2FjShVvbr6OpmjPQSFibTiaq3paT2fbizsP4OF4XUAiAp%2FZipSelupcL8YfRkoteLk3VUQePJvlIoQpZejjaRwSr%2FAwghEAAaDDYzNzQyMzE4MzgwNSIM6GAiav4FhkMvoQ56KtwD8NJM6UQEY38zM0a739IIj09E%2F9cKG%2BikxNsozDPYRYRRcJ4Hp89Yv7zoOz8OIv7RVFh8kcJz9RAQkN9fJWpejy9ciJ7MEjmIvk17%2FgK2DAzbwu%2FwqYKTrmFAylvEwFRYaFmkn1gHAqmHfO%2F69QRzwTBGG7IucF4hYW4zyIntUEqtkzNILD9SKbs94hYqSos38jDhDE51zGSsVFxG3MnhdRNsKZe1CaSIS00JQFunGZMglyK4IYKvKQcn1WA3Rnb1%2FeN9rie6e8sLzh6SC8HvWZyxv8vO2dQfnsMCb%2BokpIo%2BJjvivtb7A4nNkuBADYkTQscHfGJOTUTvtmj3JRjtZeLijO6I1zIHhClUoH8T1sql1MFaQp0UyvUBJu8OFtE0BdwPPF23%2FwsMURRARRfWNGksIomiCbXc7ivtHZ7kQyPKnxfJVOGVr3yfchtZKKnHtvk6zXZQ0TRTgt74Dt5fpJOXOHCutioZtDE3iuTwZRTE4rFDGjpHVrqs1gl5z2dMHTuFx7q5V5hr5xC9ncst9VmZP%2FAoth1hv9%2BmIhPXHOMUWnB82rq1EISBMd%2FRYFq5IchcJEhq6%2FN%2Fe36qCMTy3E898PnLiG85jKoXP0wFz5T2y8e6COdeMIykZywwl77RzwY6pgFkcTBt5rkNBgT%2FoqgJ7f2kdHUxggoeEkdDlFMP2vzuIlz1Ob%2FN7GyJ00c%2FCOCYLQFaL%2Fb3hslRblYvT28FYFE%2FWjFXqa1UHLnWuaHmAxXCPrVF%2FR95NrLkJUQQF2C1pjG6UNYDUl6mgqHPLvle7LdK1t0zNfCru3Ae%2FtiHn6aFtpKQGiUuRRPEm%2FkXci0h2YG9GVJcNGS7TSWyk7jNFsFiOShYJ%2Fj3&X-Amz-Signature=6b18bd5ed90cb2b9083869d9e1eec66dc03107c6c14db0ed43b121ded56c2af1&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

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

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/c7ac0924-323e-4cbd-9af7-c8e41dca27e7/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB4664AKMG5Z5%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085914Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJGMEQCIGMw%2FjShVvbr6OpmjPQSFibTiaq3paT2fbizsP4OF4XUAiAp%2FZipSelupcL8YfRkoteLk3VUQePJvlIoQpZejjaRwSr%2FAwghEAAaDDYzNzQyMzE4MzgwNSIM6GAiav4FhkMvoQ56KtwD8NJM6UQEY38zM0a739IIj09E%2F9cKG%2BikxNsozDPYRYRRcJ4Hp89Yv7zoOz8OIv7RVFh8kcJz9RAQkN9fJWpejy9ciJ7MEjmIvk17%2FgK2DAzbwu%2FwqYKTrmFAylvEwFRYaFmkn1gHAqmHfO%2F69QRzwTBGG7IucF4hYW4zyIntUEqtkzNILD9SKbs94hYqSos38jDhDE51zGSsVFxG3MnhdRNsKZe1CaSIS00JQFunGZMglyK4IYKvKQcn1WA3Rnb1%2FeN9rie6e8sLzh6SC8HvWZyxv8vO2dQfnsMCb%2BokpIo%2BJjvivtb7A4nNkuBADYkTQscHfGJOTUTvtmj3JRjtZeLijO6I1zIHhClUoH8T1sql1MFaQp0UyvUBJu8OFtE0BdwPPF23%2FwsMURRARRfWNGksIomiCbXc7ivtHZ7kQyPKnxfJVOGVr3yfchtZKKnHtvk6zXZQ0TRTgt74Dt5fpJOXOHCutioZtDE3iuTwZRTE4rFDGjpHVrqs1gl5z2dMHTuFx7q5V5hr5xC9ncst9VmZP%2FAoth1hv9%2BmIhPXHOMUWnB82rq1EISBMd%2FRYFq5IchcJEhq6%2FN%2Fe36qCMTy3E898PnLiG85jKoXP0wFz5T2y8e6COdeMIykZywwl77RzwY6pgFkcTBt5rkNBgT%2FoqgJ7f2kdHUxggoeEkdDlFMP2vzuIlz1Ob%2FN7GyJ00c%2FCOCYLQFaL%2Fb3hslRblYvT28FYFE%2FWjFXqa1UHLnWuaHmAxXCPrVF%2FR95NrLkJUQQF2C1pjG6UNYDUl6mgqHPLvle7LdK1t0zNfCru3Ae%2FtiHn6aFtpKQGiUuRRPEm%2FkXci0h2YG9GVJcNGS7TSWyk7jNFsFiOShYJ%2Fj3&X-Amz-Signature=5b22638cff0d55bf7441b03a6b68067779bd546a7b59fa96ea455e1eee1a246d&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

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

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/73219565-3737-4058-bae6-6db93ffb2d4a/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466TMD3RD5F%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085915Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCID4Pw7DI71kenrcVLGLp4gajF%2BKqP1MgnmbVHX%2FlC9ZyAiEArqpgMEuJNLqvJ7H%2B1cdrOkoZkXfAQ1hKNRWUYeGW1aQq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDPEdCOGIwpC9UcWC4yrcA4ba8Lvww1Phcw2V6a%2FboHyR0EEYGGBAWohJad%2Bdt5%2F88pvz%2FwQcqG9LDe%2FR6K8I1T%2F0qpDYeWVYBAfVmiY%2FxlAKasTTJiS%2Fuq5LUS%2Fkukuw99ZUymXPC38mRYBJrMfewE3zCVqWx1syujF0B634K4bkToAppWRPGPnss8YCKvPRONiQp1i1qvRuyLjQJrRmmZwpkfep%2FEfeMDOA4CPEPCOW4pWs3TGwsDW4RWAhiLVTCrzQHFiQ%2FFcqmOyMRohZ%2FDVI5%2BPwJQyKiDhExYoNOO%2BSljlqw1WrFyq7HpEDoUuuQlgldrk152UlUK2p%2FAO2FgNGg3tCemOAeFAAtUAvza5xJKHDKSLTrWigcwWdCkyf1%2FsuXOA1wfeyJd3YLaHB4btngloRcYE%2FganqCij7YDYtfna56Kg3agww7U3tYxw5ebgBNixB0dzlD9QZC4cHZtKZOyW4E5OfN2P8S85Jb2%2FzdyJ4bHGYcGMT3TszAu9OCJKKd9FCW0Z73hpKiSKXDQh3Y80Q0TZmpdFXpPOLqqR2dNWMXm9hbZ%2BB4JCvNVgRPSkq%2BOLlNWPjQuFARcq1i3cCSwwFek46INs%2B09YNRqgjGkXFAlUF5aN0AdtuLJhzQrBHfzIeqexDWme0MJXB0c8GOqUBJohcQ8PUh%2BF4foN7cdzYNdoGU40YeadDYe44EhGCkmmWn8YHiVBsby9b6ErNYo0JC0KZz%2BpTVyKH4fH2LQXUqpuKunWS5nI5B0tcMvHITJnrOorEo5XwoIea0LAbO6zk89d0q7Szb4UutkVUxy%2F4FAFvjmiRDaOaDINM3xB0Caw9QXZSDIBJ3JJ4B1JprwTeHlxCRRBXinpGtteCE1qUDS%2FpG4Av&X-Amz-Signature=0fee4e31a5b9cd4bec9b31e57038dc25b22e50c1b40fd60c70803fb1674db53d&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

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

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/4245fcd0-de11-4110-a227-536aba9710da/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466TMD3RD5F%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085915Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCID4Pw7DI71kenrcVLGLp4gajF%2BKqP1MgnmbVHX%2FlC9ZyAiEArqpgMEuJNLqvJ7H%2B1cdrOkoZkXfAQ1hKNRWUYeGW1aQq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDPEdCOGIwpC9UcWC4yrcA4ba8Lvww1Phcw2V6a%2FboHyR0EEYGGBAWohJad%2Bdt5%2F88pvz%2FwQcqG9LDe%2FR6K8I1T%2F0qpDYeWVYBAfVmiY%2FxlAKasTTJiS%2Fuq5LUS%2Fkukuw99ZUymXPC38mRYBJrMfewE3zCVqWx1syujF0B634K4bkToAppWRPGPnss8YCKvPRONiQp1i1qvRuyLjQJrRmmZwpkfep%2FEfeMDOA4CPEPCOW4pWs3TGwsDW4RWAhiLVTCrzQHFiQ%2FFcqmOyMRohZ%2FDVI5%2BPwJQyKiDhExYoNOO%2BSljlqw1WrFyq7HpEDoUuuQlgldrk152UlUK2p%2FAO2FgNGg3tCemOAeFAAtUAvza5xJKHDKSLTrWigcwWdCkyf1%2FsuXOA1wfeyJd3YLaHB4btngloRcYE%2FganqCij7YDYtfna56Kg3agww7U3tYxw5ebgBNixB0dzlD9QZC4cHZtKZOyW4E5OfN2P8S85Jb2%2FzdyJ4bHGYcGMT3TszAu9OCJKKd9FCW0Z73hpKiSKXDQh3Y80Q0TZmpdFXpPOLqqR2dNWMXm9hbZ%2BB4JCvNVgRPSkq%2BOLlNWPjQuFARcq1i3cCSwwFek46INs%2B09YNRqgjGkXFAlUF5aN0AdtuLJhzQrBHfzIeqexDWme0MJXB0c8GOqUBJohcQ8PUh%2BF4foN7cdzYNdoGU40YeadDYe44EhGCkmmWn8YHiVBsby9b6ErNYo0JC0KZz%2BpTVyKH4fH2LQXUqpuKunWS5nI5B0tcMvHITJnrOorEo5XwoIea0LAbO6zk89d0q7Szb4UutkVUxy%2F4FAFvjmiRDaOaDINM3xB0Caw9QXZSDIBJ3JJ4B1JprwTeHlxCRRBXinpGtteCE1qUDS%2FpG4Av&X-Amz-Signature=5eae5db87c09bf612b766454000e5116d2e25861603e44bd4826d3918f14e66a&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

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

![](https://prod-files-secure.s3.us-west-2.amazonaws.com/493e8745-59f0-41aa-bf4a-cd898c3e48d5/c44dd0d8-8cb1-49a0-b242-01cb387b6159/image.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466TMD3RD5F%2F20260501%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20260501T085915Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFgaCXVzLXdlc3QtMiJHMEUCID4Pw7DI71kenrcVLGLp4gajF%2BKqP1MgnmbVHX%2FlC9ZyAiEArqpgMEuJNLqvJ7H%2B1cdrOkoZkXfAQ1hKNRWUYeGW1aQq%2FwMIIRAAGgw2Mzc0MjMxODM4MDUiDPEdCOGIwpC9UcWC4yrcA4ba8Lvww1Phcw2V6a%2FboHyR0EEYGGBAWohJad%2Bdt5%2F88pvz%2FwQcqG9LDe%2FR6K8I1T%2F0qpDYeWVYBAfVmiY%2FxlAKasTTJiS%2Fuq5LUS%2Fkukuw99ZUymXPC38mRYBJrMfewE3zCVqWx1syujF0B634K4bkToAppWRPGPnss8YCKvPRONiQp1i1qvRuyLjQJrRmmZwpkfep%2FEfeMDOA4CPEPCOW4pWs3TGwsDW4RWAhiLVTCrzQHFiQ%2FFcqmOyMRohZ%2FDVI5%2BPwJQyKiDhExYoNOO%2BSljlqw1WrFyq7HpEDoUuuQlgldrk152UlUK2p%2FAO2FgNGg3tCemOAeFAAtUAvza5xJKHDKSLTrWigcwWdCkyf1%2FsuXOA1wfeyJd3YLaHB4btngloRcYE%2FganqCij7YDYtfna56Kg3agww7U3tYxw5ebgBNixB0dzlD9QZC4cHZtKZOyW4E5OfN2P8S85Jb2%2FzdyJ4bHGYcGMT3TszAu9OCJKKd9FCW0Z73hpKiSKXDQh3Y80Q0TZmpdFXpPOLqqR2dNWMXm9hbZ%2BB4JCvNVgRPSkq%2BOLlNWPjQuFARcq1i3cCSwwFek46INs%2B09YNRqgjGkXFAlUF5aN0AdtuLJhzQrBHfzIeqexDWme0MJXB0c8GOqUBJohcQ8PUh%2BF4foN7cdzYNdoGU40YeadDYe44EhGCkmmWn8YHiVBsby9b6ErNYo0JC0KZz%2BpTVyKH4fH2LQXUqpuKunWS5nI5B0tcMvHITJnrOorEo5XwoIea0LAbO6zk89d0q7Szb4UutkVUxy%2F4FAFvjmiRDaOaDINM3xB0Caw9QXZSDIBJ3JJ4B1JprwTeHlxCRRBXinpGtteCE1qUDS%2FpG4Av&X-Amz-Signature=80e0ef0f5d71f91f5b359990e115aadb33ca77a485ae3950d33889651ec10c02&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject)

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
