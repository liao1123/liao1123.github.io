# Xinyang Liao · Academic Homepage

个人学术主页，使用原生 HTML、CSS 和少量 JavaScript，可直接由 GitHub Pages 托管。

## 本地预览

在仓库根目录运行：

```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

打开 <http://127.0.0.1:8000/>。如果服务运行在远程服务器上，先在自己的电脑建立 SSH 端口转发：

```bash
ssh -N -L 8000:127.0.0.1:8000 USER@SERVER
```

本地预览不需要上传代码，端口被占用时可换用其他空闲端口。

## 文件结构

| 位置 | 用途 |
| --- | --- |
| `index.html` | 简介、动态、论文、教育经历、奖项及联系方式 |
| `style.css` | 页面布局和响应式样式 |
| `figure/` | 网站头像、论文示意图和微信二维码 |
| `cv/src/resume-en.tex` | 英文单页 CV 的全部内容 |
| `cv/template/resume.cls` | CV 字体、版式和链接设置 |
| `cv/resume-en.pdf` | 网站链接的英文单页 CV |
| `cv/build/` | 被 Git 忽略的编译中间文件 |
| `.nojekyll` | GitHub Pages 静态文件标记 |

网站头像为 `figure/portrait.png`。

## 更新 CV

需要 GNU Make 和提供 pdfLaTeX、Charter 字体及常规宏包的 TeX Live。

```bash
make -C cv       # 编译英文单页 PDF
make -C cv clean # 清理中间文件，保留最终 PDF
```

详细说明见 [cv/README.md](cv/README.md)。更新后在本地检查网页和 PDF，再由仓库维护者决定上传。
