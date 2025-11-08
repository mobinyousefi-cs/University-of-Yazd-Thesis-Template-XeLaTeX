# Yazd University Thesis Template (LaTeX)

This repository contains the **official LaTeX template for theses and dissertations** at **Yazd University**, originally designed and released around the year **1400 (2021/2022)**.  
The template provides the standard formatting and structure required by the university for graduate theses written in Persian.

> ⚠️ **Note:** This repository does **not** contain original work by the maintainer. It is a republished and slightly reorganized version of the official Yazd University template.

---

## 📄 Overview

The template is written in **LaTeX** and is intended for use with **XeLaTeX**, which provides proper Persian/Arabic script support and Unicode font handling.

The structure includes:
- Main thesis file (`main.tex`)
- Example chapters and appendices
- Configuration files for fonts, margins, and bibliography
- Examples of Persian and English pages (title page, abstract, etc.)

---

## 🧩 Requirements

To compile the document correctly, you need:

- **TeX distribution:** [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/)
- **Compiler:** `xelatex`
- **Recommended editor:** [TeXstudio](https://www.texstudio.org/) or [Overleaf](https://www.overleaf.com/)

---

## ⚙️ How to Compile

1. Open the main file (usually `main.tex`).
2. Compile using **XeLaTeX** (do **not** use pdfLaTeX).
3. Run `biber` if the template uses bibliography references.
4. Re-compile twice to ensure all references are updated.

Example (command-line):
```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

## 🕓 Update Status

According to the latest available information (as of **1404 / 2025**),  
the **official Yazd University thesis template has not been updated** since its 1400 edition.  
This repository reflects that version without modification to the core structure.

---

## 📚 License

This template is provided for **educational and academic use**.  
All rights belong to **Yazd University**.  
The maintainer of this repository **does not claim ownership** of the original template.

---

## 🙌 Acknowledgment

All credit goes to **Yazd University** and the original authors and maintainers of the LaTeX thesis template.  
This repository simply preserves and redistributes the template for easier access and long-term availability.
