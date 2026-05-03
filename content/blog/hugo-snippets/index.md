---
title: "几个常用的 Hugo 片段，够我把博客继续搭下去"
description: "一篇测试代码块和配置展示的文章，用来验证等宽字体、代码高亮和段落间距。"
summary: "把常用的 Hugo 模板片段留下来，能减少很多重复搜索。"
date: 2024-07-02T10:20:00+08:00
lastmod: 2024-07-02T10:20:00+08:00
draft: false
weight: 40
categories: ["代码"]
tags: ["Hugo", "代码", "片段"]
---

## 首页文章列表

有时候只想拿到 `blog` 目录下的文章：

```go-html-template
{{ $posts := where site.RegularPages "Section" "blog" }}
{{ range first 5 $posts }}
  <a href="{{ .RelPermalink }}">{{ .Title }}</a>
{{ end }}
```

## 标签链接

把标签转换成可点击地址：

```go-html-template
{{ range .Params.tags }}
  <a href="{{ (printf "/tags/%s/" (. | urlize)) | relURL }}">{{ . }}</a>
{{ end }}
```

## 配置里的一个最小菜单

```toml
[[main]]
name = "文章"
url = "/blog/"
weight = 20
```

## 为什么要留下这些片段

因为一段能复用的配置，比临时搜索一次答案更有长期价值。
