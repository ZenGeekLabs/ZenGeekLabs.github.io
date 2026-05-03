---
title: "A Few Hugo Snippets That Are Enough to Keep This Blog Growing"
slug: "hugo-snippets"
description: "A sample post for testing code blocks, monospace fonts, and configuration snippets."
summary: "Keeping reusable Hugo snippets around saves a lot of repeat searching."
date: 2024-07-02T10:20:00+08:00
lastmod: 2024-07-02T10:20:00+08:00
draft: false
weight: 40
categories: ["Code"]
tags: ["Hugo", "Code", "Snippets"]
---

## Homepage post list

Sometimes you only want posts under the `blog` section:

```go-html-template
{{ $posts := where site.RegularPages "Section" "blog" }}
{{ range first 5 $posts }}
  <a href="{{ .RelPermalink }}">{{ .Title }}</a>
{{ end }}
```

## Tag links

Turn tags into clickable links:

```go-html-template
{{ range .Params.tags }}
  <a href="{{ (printf "/tags/%s/" (. | urlize)) | relURL }}">{{ . }}</a>
{{ end }}
```

## A minimal menu in config

```toml
[[main]]
name = "Posts"
url = "/blog/"
weight = 20
```

## Why keep these snippets

Because a reusable snippet is often more valuable in the long run than searching for the same answer again.
