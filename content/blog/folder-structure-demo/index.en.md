---
title: "A More Structured Article Bundle: One Post, One Folder, One assets Directory"
slug: "folder-structure-demo"
description: "A demonstration post that shows a more engineering-style Hugo article structure with index.md, index.en.md, and an assets directory."
summary: "If the blog should feel more professional and easier to maintain, each post can be treated as a self-contained bundle."
date: 2026-05-04T09:00:00+08:00
lastmod: 2026-05-04T09:00:00+08:00
draft: false
weight: 100
categories: ["Testing"]
tags: ["Structure", "Assets", "Hugo", "Workflow"]
---

This post is not mainly about its content. It is here to **show how one article can be organized inside the repository** so the project feels more like a clean engineering workspace than a pile of loose files.

## Recommended Structure

The folder for this article can look like this:

```text
content/blog/folder-structure-demo/
  index.md
  index.en.md
  assets/
    cover-placeholder.svg
    workflow-diagram.svg
    publishing-checklist.txt
```

You can read it like this:

- `index.md`: Chinese article
- `index.en.md`: English article
- `assets/`: images, diagrams, and attachments that belong to this post

## Why This Feels More Professional

This structure helps because:

- one article becomes one complete unit
- Chinese, English, and attachments stay together
- renaming, moving, and backing up become easier
- other people can understand the repository quickly
- it feels more like a project structure than scattered blog files

## Example Assets

The image below comes from this article's own `assets/` directory:

![Cover placeholder](assets/cover-placeholder.svg)

Here is a second asset that looks more like a lightweight workflow diagram:

![Publishing workflow diagram](assets/workflow-diagram.svg)

If you want a downloadable attachment, it can also stay in the same folder:

[Download the publishing checklist](assets/publishing-checklist.txt)

## What Should Go Into assets

Good candidates for `assets/`:

- cover images
- screenshots
- diagrams
- PDFs
- post-specific downloadable files

## What Should Not Go Into assets

These are usually better in the global [static](/Users/zhugeliang/notes/ZenGeekLabs.github.io/static):

- favicon
- site avatar
- site-wide logo
- shared resources reused by many posts

## Suggested Long-Term Rule

If the goal is to keep the blog clean over time, this is a good rule to stick with:

```text
one article = one folder
Chinese article = index.md
English article = index.en.md
article resources = assets/
```

Then every new article can follow the same pattern.
