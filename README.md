# ZenGeekLabs.github.io

一个基于 `Hugo` 和 `DoIt` 的个人博客。

## 本地开发

启动本地预览：

```bash
hugo server --config hugo.toml,hugo.dev.toml
```

默认访问地址：

```bash
http://127.0.0.1:1313
```

## 写文章

新建一篇博客文章：

```bash
hugo new blog/my-new-post/index.md
```

如果以后要补英文版，对应文件放在同一个目录下：

```bash
content/blog/my-new-post/index.en.md
```

## 目录结构

- `content/` 站点内容
- `content/blog/` 博客文章
- `content/about*.md` 关于页
- `content/archives*.md` 归档页
- `content/search*.md` 搜索页
- `content/tags/`、`content/categories/` 标签与分类页
- `layouts/` 本地模板覆盖
- `static/` 站点静态资源
- `themes/DoIt-main/` 当前主题
- `archetypes/` 新文章模板
- `docs/` GitHub Pages 发布目录
- `hugo.toml` 主配置
- `hugo.dev.toml` 本地开发覆盖配置

## 部署

当前仓库通过 GitHub Pages 发布 `docs/` 目录内容。
