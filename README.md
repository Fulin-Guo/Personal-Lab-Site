# Personal Future Homepage

黑白未来编辑风个人主页，定位为个人实验室 / 技术作品集。站点用于展示个人简历、项目作品、技术博客和更新日志。

## 技术栈

- Astro
- TypeScript
- Astro Content Collections
- 原生 CSS
- pnpm

## 本地开发

```powershell
cd D:\PyProject\personal-future-homepage
pnpm install
pnpm dev
```

构建检查：

```powershell
pnpm build
```

## 内容维护

### 个人信息、项目、技能

修改：

```txt
src\data\profile.ts
```

这里维护：

- `profile`：姓名、职业、邮箱、GitHub、状态
- `projects`：作品列表
- `skills`：技能矩阵
- `timeline`：经历时间线

### 博客文章

新增 Markdown 文件：

```txt
src\content\blog\your-post-slug.md
```

格式：

```md
---
title: "文章标题"
description: "文章摘要"
published: 2026-05-20
tags: ["AI", "Engineering"]
---

正文内容。
```

### 更新日志

新增 Markdown 文件：

```txt
src\content\changelog\2026-05-20-example.md
```

格式：

```md
---
title: "更新标题"
date: 2026-05-20
type: "feature"
summary: "一句话说明本次更新。"
---

本次更新的详细说明。
```

`type` 可选：

- `feature`
- `design`
- `content`
- `fix`

日志页面：

```txt
/changelog
```

## 关键目录

```txt
src\components\        页面组件
src\content\blog\      博客文章
src\content\changelog\ 更新日志
src\data\profile.ts    站点核心数据
src\pages\             页面路由
src\styles\global.css  全局视觉系统
```
