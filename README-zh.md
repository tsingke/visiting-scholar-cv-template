<div align="center">

# 🎓 访问学者简历模板（LaTeX）

### Visiting Scholar CV Template · 中英文双语学术简历

一套基于 XeLaTeX 的专业双栏学术简历模板，专为**访问学者、高校教师与研究生**设计——尤其适合申请**国家留学基金委（CSC）公派访问学者**。

[![Stars](https://img.shields.io/github/stars/tsingke/visiting-scholar-cv-template?style=flat&logo=github)](https://github.com/tsingke/visiting-scholar-cv-template)
[![Forks](https://img.shields.io/github/forks/tsingke/visiting-scholar-cv-template?style=flat&logo=github)](https://github.com/tsingke/visiting-scholar-cv-template/forks)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Engine](https://img.shields.io/badge/engine-XeLaTeX-brightgreen.svg)](main-zh.tex)
[![TeX Live](https://img.shields.io/badge/TeX%20Live-2024%2B-orange.svg)](https://tug.org/texlive/)
[![Bilingual](https://img.shields.io/badge/bilingual-中%20%7C%20英-9cf.svg)](README-zh.md)
[![CSC](https://img.shields.io/badge/for-CSC%20访问学者-ff69b4.svg)](README-zh.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/tsingke/visiting-scholar-cv-template/pulls)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%A7%88-2ea44f.svg)](https://tsingke.github.io/visiting-scholar-cv-template/)

</div>

---

## ✨ 特性

| | |
|---|---|
| 🌏 **中英双语** | 英文版（`main-en.tex`）与中文版（`main-zh.tex`）共用同一套样式文件 |
| 📐 **双栏布局** | 左侧栏（照片、姓名、研究方向、教育经历、兴趣、联系方式、访学计划）+ 右侧主体（简介、经历、论文、项目、教学、荣誉、合作） |
| 🎨 **一键换肤** | 全局配色集中管理——修改 `academic-cv.sty` 中 4 个 RGB 值即可整份换肤 |
| 📊 **技能进度条** | 全宽进度条直观展示技能水平 |
| 🧩 **模块化架构** | 样式（`.sty`）、入口（`.tex`）、内容（`.tex`）严格分离——改个人信息只需动内容文件 |
| 🔗 **图标链接** | Font Awesome 图标，邮箱 / GitHub 一键可点 |
| 🖼 **示例内容虚构** | 示例数据（姓名、单位、邮箱、论文）全部虚构，不含任何隐私信息 |
| 🛠 **一键编译** | 内置 `latexmk` 与 `Makefile`，一条命令完成编译 |

## 📸 效果预览

使用 XeLaTeX（TeX Live 2026）编译，Raleway 字体，美国蓝配色。

| 英文版（`main-en.pdf`） | 中文版（`main-zh.pdf`） |
|:---:|:---:|
| ![EN 第1页](docs/preview/main-en-p1.png) | ![ZH 第1页](docs/preview/main-zh-p1.png) |
| *Page 1 — profile, experience, contributions, publications* | *第 1 页 — 个人简介、工作经历、贡献与论文* |
| ![EN 第2页](docs/preview/main-en-p2.png) | ![ZH 第2页](docs/preview/main-zh-p2.png) |
| *Page 2 — projects, teaching, honours, collaboration* | *第 2 页 — 项目、教学、荣誉与合作意向* |

### 🌐 在线介绍网页

项目配套了基于 **GitHub Pages** 的中文介绍网页——移动端友好的落地页，完整呈现特性、效果预览、编译教程与文件结构：

**[tsingke.github.io/visiting-scholar-cv-template](https://tsingke.github.io/visiting-scholar-cv-template/)** 📱✨

| 在线网页（顶部） |
|:---:|
| ![GitHub Pages 在线网页](docs/preview/pages-top.png) |

## 🚀 快速开始

### 环境要求

| 组件 | 说明 |
|---|---|
| TeX Live 2024+ | 含 `xelatex`、`latexmk` |
| Raleway 字体 | TeX Live 自带（`fonts/opentype/impallari/raleway`） |
| Font Awesome | TeX Live 自带（`fonts/opentype/public/fontawesome`） |
| 中文字体 | macOS 用苹方（PingFang SC），其他系统自动回退到 Fandol 黑体 |

### 编译方法

```bash
# --- 中文版（需运行两次以确保页眉/页脚定位正确）
xelatex main-zh.tex
xelatex main-zh.tex

# --- 英文版
xelatex main-en.tex
xelatex main-en.tex

# --- 或使用 Makefile 一键编译
make          # 同时编译中英文
make en       # 仅英文
make zh       # 仅中文
```

输出：`main-en.pdf` 与 `main-zh.pdf`（各 2 页）。

## 📂 文件结构

```
visiting-scholar-cv-template/
├── academic-cv.sty       # 样式层：字体、配色、版式与 CV 命令
├── main-en.tex           # 英文版入口（含编译说明）
├── main-zh.tex           # 中文版入口（含编译说明）
├── cv-content-en.tex     # 英文内容层（示例：张大山）
├── cv-content-zh.tex     # 中文内容层（示例：张大山）
├── resources/
│   └── photo.jpg         # 占位照片——替换为你自己的照片
├── docs/preview/         # 渲染效果图（本 README 使用）
├── Makefile              # 一键编译（en / zh / all / clean）
├── latexmkrc             # latexmk 的 XeLaTeX 配置
├── LICENSE               # MIT 许可证
└── README.md / README-zh.md
```

## 🎨 自定义指南

### 1 · 个人信息 —— `cv-content-en.tex` / `cv-content-zh.tex`

所有个人信息集中在这两个文件中，每个板块都带注释标记：

```latex
%--- 姓名与头衔 --------------------------------------------------------------%
\fcolorbox{white}{white}{\begin{minipage}[c][2.0cm][c]{1\mpwidth}
	\LARGE{\textbf{\textcolor{maincol}{张大山}}} \\[2pt]
	\normalsize{ \textcolor{maincol} {博士 | 副教授} } \\[1pt]
	\normalsize{ \textcolor{maincol} {硕士生导师} }
\end{minipage}} \\
```

将虚构示例（张大山 / Da-Shan Zhang）替换为你自己的信息即可。

### 2 · 配色 —— `academic-cv.sty`

整份简历由 `GLOBAL COLOR PALETTE` 区块的 **4 种基础颜色**决定：

```latex
\definecolor{maincol}{RGB}{52,62,80}     % 正文文字
\definecolor{darkcol}{RGB}{24,44,82}     % 章节标题
\definecolor{accentcol}{RGB}{59,89,152}  % 页眉条带、时间框、进度条（美国蓝）
\definecolor{lightcol}{RGB}{238,242,247} % 页脚条带、进度条轨道
```

可任意更换配色——例如哈佛绯红 `(165,28,48)`、牛津深蓝 `(0,33,71)`。

### 3 · 字体 —— `academic-cv.sty`

字体按文件名直接加载（无需配置字体索引）：

```latex
\setmainfont{Raleway-Regular.otf}[
  BoldFont=Raleway-Bold.otf,
  ItalicFont=Raleway-RegularItalic.otf,
  BoldItalicFont=Raleway-BoldItalic.otf
]
```

中文字体自动选择：macOS 使用苹方，其他系统使用 Fandol 黑体。可按同样方式更换任意 OpenType 字体（TeX Gyre Heros、Source Sans Pro 等）。

### 4 · 页眉姓名 —— 内容文件

每页顶部页眉栏的姓名，在对应内容文件开头设置：

```latex
\renewcommand{\cvheadername}{Da-Shan Zhang}   % 英文版
\renewcommand{\cvheadername}{张大山}          % 中文版
```

### 5 · 图标 —— `academic-cv.sty`

Font Awesome v4 图标通过 Unicode 码位映射：

```latex
\newcommand{\faGithub}{{\iconfont\char"F09B}}
```

可参照 [FA 4.7 图标速查表](https://fontawesome.com/v4/cheatsheet/) 添加更多图标。

## 🤝 参与贡献

欢迎任何形式的贡献！

- 🐛 发现问题？提交 [Issue](https://github.com/tsingke/visiting-scholar-cv-template/issues)
- 💡 有改进想法？提交 [Pull Request](https://github.com/tsingke/visiting-scholar-cv-template/pulls)
- ⭐ 觉得好用？点个 Star，帮助项目成长

## 📜 开源协议

本项目采用 **MIT 许可证** 开源，详见 [LICENSE](LICENSE)。

*参考 Philip Empl 的双栏简历设计（MIT）。*

---

<div align="center">
用心为全球学术社区而作 · 愿所有访问学者申请顺利 🚀
</div>
