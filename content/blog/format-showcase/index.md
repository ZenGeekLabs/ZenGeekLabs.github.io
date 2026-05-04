---
title: "格式测试总览：目录、表格、代码块、提示框都放进来"
slug: "format-showcase"
description: "一篇用来测试 DoIt 主题单篇页面效果的综合文章，包含目录、列表、表格、代码、引用、脚注和短代码。"
summary: "把常见格式都放在一篇文章里，方便检查目录栏、排版和组件样式。"
date: 2026-05-03T16:00:00+08:00
lastmod: 2026-05-03T16:00:00+08:00
draft: false
weight: 99
categories: ["测试"]
tags: ["测试", "格式", "DoIt", "Hugo"]
---

这是一篇专门用来验收主题显示效果的测试文章。目标不是把内容写深，而是把我们平时最常见、最容易出问题的格式都塞进来，直接看真实渲染。

## 标题与目录

如果目录功能正常，这一篇应该能在右侧或浮动目录里看到多级标题结构。

### 二级标题

正文段落应该测试这些点：

- 中文长段落换行是否自然
- 行高会不会显得太挤
- 中英文混排时是否有明显断裂
- `inline code`、**加粗**、*斜体*、~~删除线~~ 是否和正文和谐

### 三级标题

有时候文章会出现很长的句子，比如我们想测试一个包含中文、English words、`code span` 和一个较长链接的段落在同一行里是否会产生奇怪的断裂：[Hugo 官方文档](https://gohugo.io/documentation/)。

## 列表

### 无序列表

- 第一层项目
- 第二层项目不单独展示，但我们看看普通列表的间距
- 第三项里放一个短链接：[GitHub](https://github.com/)

### 有序列表

1. 先写下一个想法
2. 再把它整理成结构
3. 最后决定它是否值得成为一篇文章

### 任务列表

- [x] 主题已经切换到 DoIt
- [x] 线上已经能访问
- [ ] 再把细节继续打磨

## 引用与分隔

> 好的博客不是一次性写完的大部头，而是一套能长期复用的知识积累方式。

---

上面这条横线可以顺便看看主题对段落节奏的处理。

## 代码块

### TOML

```toml
[params.page.toc]
enable = true
keepStatic = false
auto = true
```

### Go Template

```go-html-template
{{ $posts := where site.RegularPages "Section" "blog" }}
{{ range first 5 $posts }}
  <a href="{{ .RelPermalink }}">{{ .Title }}</a>
{{ end }}
```

### JavaScript

```js
function toggleTheme(mode) {
  localStorage.setItem("theme", mode);
  document.documentElement.dataset.theme = mode;
}
```

## 表格

| 项目 | 用途 | 备注 |
| --- | --- | --- |
| Hugo | 静态站点生成 | 构建速度快 |
| DoIt | 主题 | 交互能力更强 |
| GitHub Pages | 托管 | 部署轻量 |

## 图片

下面这张图只是占位图，用来确认图片圆角、边距和标题区不会出错。

![占位头像](/avatar-placeholder.svg)

## 脚注

脚注适合测试编号和底部回链是否正常。这里放一个脚注示例。[^1]

[^1]: 这是一条脚注，用来测试主题对脚注的排版处理。

## 提示框

{{< admonition type=note title="说明" open=true >}}
这是一个 DoIt 自带的提示框短代码，适合测试边框、背景和折叠状态。
{{< /admonition >}}

{{< admonition type=tip title="建议" open=true >}}
如果你后面要长期写博客，最好准备一篇这样的格式测试文，后面换主题时特别省事。
{{< /admonition >}}

## Tabs 组件

{{< tabs defaultTab=0 >}}
{{< tab title="Markdown" >}}
这里可以放普通说明文字，观察 tab 的按钮、边框和正文留白。
{{< /tab >}}
{{< tab title="代码" >}}
```bash
hugo --config hugo.toml
```
{{< /tab >}}
{{< /tabs >}}

## 结尾

如果这一页最后能正常显示目录、标题层级、列表、代码块、表格、图片、脚注和短代码，说明单篇文章模板已经基本回到可用状态了。
