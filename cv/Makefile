.DEFAULT_GOAL := all

LATEX := pdflatex
LATEXFLAGS := -interaction=nonstopmode -halt-on-error -file-line-error -no-shell-escape
BUILD_DIR := build
export TEXINPUTS := $(CURDIR)/template//:$(TEXINPUTS)

.PHONY: all en pdf clean
all: resume-en.pdf
en pdf: all

resume-en.pdf: src/resume-en.tex template/resume.cls Makefile
	mkdir -p $(BUILD_DIR)
	$(LATEX) $(LATEXFLAGS) -output-directory=$(BUILD_DIR) $<
	$(LATEX) $(LATEXFLAGS) -output-directory=$(BUILD_DIR) $<
	cp $(BUILD_DIR)/resume-en.pdf $@

# The website PDF remains available after cleaning or a failed compilation.
clean:
	$(RM) -r -- $(BUILD_DIR)
