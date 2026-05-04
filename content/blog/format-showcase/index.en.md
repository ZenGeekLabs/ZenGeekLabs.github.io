---
title: "Format Showcase: TOC, Tables, Code Blocks, and Admonitions in One Post"
slug: "format-showcase"
description: "A single test post for validating the DoIt article layout, including the table of contents, lists, tables, code blocks, images, footnotes, and shortcodes."
summary: "Put the common formats into one article so we can quickly verify the TOC, typography, and component styling."
date: 2026-05-03T16:00:00+08:00
lastmod: 2026-05-03T16:00:00+08:00
draft: false
weight: 99
categories: ["Testing"]
tags: ["Testing", "Formatting", "DoIt", "Hugo"]
---

This is a dedicated article for checking how the theme renders real content. The point is not deep writing. The point is to put the most common and most failure-prone formats into one page and inspect the output directly.

## Headings and TOC

If the table of contents is working, this page should show a clear multi-level heading structure in the side or floating TOC.

### Secondary heading

The body text should help us verify these points:

- whether long paragraphs wrap naturally
- whether line height feels too tight
- whether mixed Chinese and English text breaks awkwardly
- whether `inline code`, **bold**, *italic*, and ~~strikethrough~~ feel balanced with normal text

### Tertiary heading

Sometimes an article contains a very long sentence. This paragraph is here to check whether Chinese, English words, `code span`, and a longer link can live on the same line without strange wrapping behavior: [Hugo documentation](https://gohugo.io/documentation/).

## Lists

### Unordered list

- First item
- The second item is still plain, but useful for checking spacing
- The third item includes a short link: [GitHub](https://github.com/)

### Ordered list

1. Write down the first idea
2. Turn it into a structure
3. Decide whether it deserves to become a full article

### Task list

- [x] The theme has been switched to DoIt
- [x] The site is already online
- [ ] Keep polishing the details

## Quote and Divider

> A good blog is not a single giant essay. It is a reusable system for long-term knowledge accumulation.

---

The horizontal rule above is also useful for checking the theme's paragraph rhythm.

## Code Blocks

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

## Table

| Item | Purpose | Note |
| --- | --- | --- |
| Hugo | Static site generator | Fast builds |
| DoIt | Theme | Stronger interactions |
| GitHub Pages | Hosting | Lightweight deployment |

## Image

The image below is just a placeholder. It helps verify image radius, spacing, and whether the article body keeps its layout stable.

![Placeholder avatar](/avatar-placeholder.svg)

## Footnote

Footnotes are useful for checking numbering and backlink behavior. Here is a sample footnote.[^1]

[^1]: This is a footnote used to test the theme's footnote layout.

## Admonitions

{{< admonition type=note title="Note" open=true >}}
This is a built-in DoIt admonition shortcode. It is useful for checking borders, background colors, and expanded state.
{{< /admonition >}}

{{< admonition type=tip title="Tip" open=true >}}
If you plan to keep writing on this blog, it is worth maintaining one showcase article like this. It saves a lot of time when you switch themes later.
{{< /admonition >}}

## Tabs

{{< tabs defaultTab=0 >}}
{{< tab title="Markdown" >}}
This area can hold normal prose so we can inspect tab buttons, borders, and content spacing.
{{< /tab >}}
{{< tab title="Code" >}}
```bash
hugo --config hugo.toml
```
{{< /tab >}}
{{< /tabs >}}

## Closing

If this page can correctly show the TOC, heading levels, lists, code blocks, tables, images, footnotes, and shortcodes, then the single-post template is back in a reliably usable state.
