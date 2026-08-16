# CV

This directory contains the LaTeX source for the website CV.

## Files

- `resume-zh_CN.tex`: main CV content
- `resume.cls`: local resume class
- `Makefile`: build command wrapper
- `resume-zh_CN.pdf`: generated PDF linked from the homepage
- `images/you.jpg`: photo used inside the CV
- `fonts/`: local fonts required by the current XeLaTeX setup

## Build

```bash
cd cv
make zh_CN
```

The homepage CV button points to:

```text
cv/resume-zh_CN.pdf
```

LaTeX temporary files are ignored by `cv/.gitignore`.
