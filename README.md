# ZenGeekLabs.github.io

一个基于 `Hugo` 和 `DoIt` 的个人博客。

## 你平时主要会用到的地方

- `content/blog/`：写文章
- `static/`：放图标、图片等静态资源
- `hugo.toml`：站点配置
- `README.md`：开发和发文说明

## 哪些目录先不要碰

- `docs/`：发布产物，Hugo 自动生成，不手改
- `themes/DoIt-main/`：主题本体，除非你确定在改主题源码
- `layouts/`：本地覆盖模板，只有需要改站点结构或样式时才动

## 本地开发

启动本地预览：

```bash
hugo server --config hugo.toml,hugo.dev.toml
```

默认访问地址：

```bash
http://127.0.0.1:1313
```

如果你用的是 VS Code，也可以直接运行任务：

- `New Blog Post`
- `Add Asset To Post`
- `Preview Blog`
- `Build Blog`

## 写文章

新建一篇文章：

```bash
scripts/new-post.sh my-new-post
```

文章默认会使用：

- `archetypes/blog.md`

新建后你主要编辑的是：

- `content/blog/my-new-post/index.md`

如果以后要补英文版，对应文件放在同一目录下：

```bash
content/blog/my-new-post/index.en.md
```

文章附件建议放在这篇文章自己的 `assets/` 目录里，例如：

```text
content/blog/my-new-post/
  index.md
  index.en.md
  assets/
    cover.png
    screenshot-1.png
    appendix.pdf
```

如果要把一个本地文件放进文章目录并自动生成 Markdown 引用，可以用：

```bash
scripts/add-asset.sh my-new-post /path/to/image.png
```

如果你想直接移动文件而不是复制：

```bash
scripts/add-asset.sh my-new-post /path/to/image.png --move
```

如果你在 VS Code 里安装了推荐扩展 `Paste Image`，图片会按工作区设置默认保存到当前文章目录下的 `assets/` 中。

注意：

- 这只对**在 Markdown 编辑器里执行 Paste Image 命令**生效
- 如果你是把已经存在的图片文件直接拖进资源管理器，VS Code 不会自动替你改放进 `assets/`
- 如果截图已经先保存成了本地文件，最稳的是运行任务 `Add Asset To Post`，或者直接用：

```bash
scripts/add-asset.sh my-new-post /absolute/path/to/image.png
```

## 发布流程

1. 本地写文章
2. 本地预览确认
3. 把文章里的 `draft` 改成 `false`
4. 生成发布文件
5. 提交并推送到 GitHub

生成发布文件：

```bash
hugo --config hugo.toml
```

提交并推送：

```bash
git add -A
git commit -m "Publish new post"
git push origin main
```

## 目录结构

- `archetypes/`：新文章模板
- `content/`：站点内容
- `content/blog/`：博客文章
- `content/about*.md`：关于页
- `content/archives*.md`：归档页
- `content/search*.md`：搜索页
- `content/tags/`、`content/categories/`：标签与分类页
- `layouts/`：本地模板覆盖
- `static/`：站点静态资源
- `themes/DoIt-main/`：当前主题
- `docs/`：GitHub Pages 发布目录
- `hugo.toml`：主配置
- `hugo.dev.toml`：本地开发覆盖配置
