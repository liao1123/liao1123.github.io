# English Academic CV

英文单页 CV，排版参考 [Tianle Gu 的简历](https://carol-gutianle.github.io/assets/pdf/Tianle_Gu_Tsinghua_LLM_Safety.pdf)：Letter 纸张、Charter 字体、居中姓名和联系方式、黑色分节横线、蓝色链接，以及右对齐的教育经历日期。

内容包括教育背景、论文和当前实习经历。

## 文件

- `src/resume-en.tex`：全部简历内容和联系方式。
- `template/resume.cls`：纸张、字体、标题、条目和 PDF 元信息设置。
- `resume-en.pdf`：网站链接的最终 PDF。
- `build/`：被 Git 忽略的编译产物。
- `LICENSE`：保留原模板许可证。

## 编译

在仓库根目录执行：

```bash
make -C cv
```

也可以进入本目录后执行 `make` 或 `make en`。

需要 GNU Make、pdfLaTeX，以及 TeX Live 提供的 `charter`、`fontenc`、`geometry`、`xcolor`、`tabularx`、`enumitem`、`titlesec`、`needspace` 和 `hyperref`。字体由 TeX Live 提供。

Makefile 设置模板搜索路径，运行两次 pdfLaTeX；成功后更新 `resume-en.pdf`。

```bash
make -C cv clean
```

清理只移除 `build/`，保留网站链接的 PDF。

## Review

确认 PDF 为一页，并检查姓名、联系方式、作者顺序、共同贡献标记、成果状态和超链接。实习起始日期未提供，因此不填写推测日期。
