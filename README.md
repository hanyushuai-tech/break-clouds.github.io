# Break Clouds 个人品牌站 — 编辑指南

## 文件结构

```
break-clouds.github.io/
├── index.html   ← 网页内容（文字、结构、链接都在这里）
├── style.css    ← 网页样式（颜色、字体、布局、动画）
├── CNAME        ← 自定义域名（不要动）
└── .nojekyll    ← 禁用 Jekyll（不要动）
```

你需要改的只有 **index.html** 和 **style.css** 两个文件。

---

## 一、修改基本文字信息

打开 `index.html`，搜索以下关键字直接替换：

| 文字 | 位置 | 怎么改 |
|------|------|--------|
| `Break Clouds` | 导航栏、Hero、关于我 | 替换为你的真实姓名 |
| `AI 开发者 / 数据科学家 / 学生 / 技术爱好者` | Hero 描述 | 改为你的身份定位 |
| `kings.land.no1@gmail.com` | 关于我、联系我 | 已在网站上，可替换为其他邮箱 |

---

## 二、修改「关于我」文字

在 `index.html` 中找到这一段（搜索 `关于我`）：

```html
<p>我是一名 AI 开发者与数据科学爱好者，目前专注于...</p>
<p>作为学生，我持续学习前沿技术...</p>
<p>我相信 AI 正在重塑每一个行业...</p>
```

把 `<p>...</p>` 里的文字替换为你自己的介绍。

---

## 三、增删技能标签

在 `index.html` 中搜索 `skill-cat`，找到类似这样的结构：

```html
<div class="skill-cat">
  <h3>&#129504; AI & 大模型</h3>
  <div class="skill-tags">
    <span>LLM 应用开发</span>
    <span>RAG</span>
    <span>Prompt Engineering</span>
  </div>
</div>
```

- **改名**：改 `<h3>` 里的分类名
- **加技能**：加一行 `<span>新技术名</span>`
- **删技能**：删除对应的 `<span>...</span>` 行
- **加分类**：复制整个 `<div class="skill-cat">...</div>` 块，粘贴到同类块后面

---

## 四、修改项目卡片

在 `index.html` 中搜索 `project-card`，每个项目是一个这样的结构：

```html
<div class="project-card">
  <div class="project-img img-agent"></div>   <!-- 图标类名 -->
  <div class="project-info">
    <div class="project-tag">LLM · Agent</div>  <!-- 标签 -->
    <h3>AI Agent 记忆系统</h3>                    <!-- 项目名 -->
    <p>基于持久化存储的 AI Agent 记忆模块...</p>     <!-- 描述 -->
    <div class="project-tech">
      <span>Python</span><span>LLM</span>         <!-- 技术栈 -->
    </div>
    <a href="项目地址" target="_blank" class="project-link">查看项目 →</a>
  </div>
</div>
```

- **改项目名/描述/链接**：直接替换对应文字
- **改图标**：`img-agent` 可换为 `img-rag`、`img-data`、`img-llm`（对应 🧠 🔗 📊 📖 四个图标），或在 `style.css` 末尾加新图标
- **加新项目**：复制整块，粘贴到 `</div>`（project-grid 结束）之前，修改内容
- **删项目**：删除对应的整个 `<div class="project-card">...</div>`

---

## 五、修改「联系我」链接

搜索 `contact-link-item`，找到：

```html
<a href="https://github.com/hanyushuai-tech" target="_blank" class="contact-link-item">
  <span class="contact-icon">&#9906;</span>
  <span>GitHub</span>
  <small>hanyushuai-tech</small>
</a>
```

- 把 `href="..."` 里的链接换掉
- 把 `<span>GitHub</span>` 换成名称
- 把 `<small>...</small>` 换成显示的文字

---

## 六、修改导航栏链接

搜索 `nav-links`：

```html
<div class="nav-links">
  <a href="#about">关于</a>
  <a href="#skills">技能</a>
  <a href="#projects">项目</a>
  <a href="#contact">联系</a>
</div>
```

- `href="#about"` 对应页内锚点（见下一节页内跳转原理）
- 可自由增删或改名

---

## 七、页内跳转原理

每个 section 的 `id` 属性就是跳转目标。例如：

```html
<section id="about">   → 导航中 href="#about" 会跳到这里
<section id="skills">  → 导航中 href="#skills" 会跳到这里
<section id="projects">→ 导航中 href="#projects" 会跳到这里
<section id="contact"> → 导航中 href="#contact" 会跳到这里
```

如果你新增了一个板块，给它一个 `id`，然后在导航加上对应链接即可。

---

## 八、修改颜色主题

打开 `style.css`，文件开头的 `:root` 块定义了所有颜色：

```css
:root {
  --bg: #09090b;          /* 背景色（极深黑） */
  --bg-card: #131318;     /* 卡片背景 */
  --border: #252530;      /* 边框颜色 */
  --purple: #a855f7;      /* 主紫色 */
  --purple-dark: #7c3aed; /* 深紫色 */
  --purple-light: #c084fc;/* 浅紫色 */
  --text: #f4f4f5;        /* 正文颜色 */
  --text-dim: #a1a1aa;    /* 次要文字 */
}
```

只需修改这些颜色值，整个网站的颜色就会跟着变。例如把紫色系换成蓝色系：

```css
--purple: #3b82f6;
--purple-dark: #2563eb;
--purple-light: #60a5fa;
```

---

## 九、部署（发布修改）

在 GitHub 仓库中，有三种方式：

### 方式 A：直接在 GitHub 网页上改
1. 打开 https://github.com/hanyushuai-tech/break-clouds.github.io
2. 点击文件 → 点右上角铅笔图标 ✏️ 编辑
3. 修改后点 **Commit changes**
4. 30 秒内自动部署，刷新网站即可看到

### 方式 B：本地编辑后推送（需要 git）
```bash
cd break-clouds.github.io
# 编辑文件...
git add -A
git commit -m "描述你的修改"
git push origin master
```

### 方式 C：用 Claude Code
告诉我你要改什么，我来帮你改并推送。

---

## 十、常见操作速查

| 想做什么 | 怎么做 |
|----------|--------|
| 改名 | 搜索替换 `Break Clouds` |
| 改头像 | 在 style.css 搜 `.about-avatar::before`，改 `content: "B"` 中的字母，或删掉这行后放真正的图片 |
| 加新板块 | 复制一个 `<section>` 块，改 `id` 和内容，在导航加链接 |
| 改社交链接 | 搜索 `hanyushuai-tech` 替换为你的 GitHub 用户名 |
| 调字体大小 | 在 style.css 中搜索 `font-size`，改具体数值 |
| 手机端适配 | style.css 末尾有 `@media` 规则，按需调整 |
