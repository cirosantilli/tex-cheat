# TeX Cheat

TeX information and cheatsheets.

Tested with TeX Live 2013 ISO on Ubuntu 12.04, but should be portable.

Aims understand what TeX does in minute detail.

Most of this is not useful most of the time for end users who should use LaTeX high level macros instead. For a LaTeX cheatsheet see: <https://github.com/cirosantilli/latex-cheat>. However, most TeX primitives can also be used in LaTeX.

The base TeX system understands about 300 commands, called primitives, which are rarely used by end users. TeX Live primitives: <http://www.tug.org/utilities/plain/cseq.html>. **Keep this under your pillow**!

TeX was created much earlier than LaTeX by Knuth in TODO. Leslie Lamport then built LaTeX on top of it in TODO.

TeX uses the extremely non-practical method of counting Pi digit as version numbers. The latest version as of 2014-03 is `3.14159265`, that is 9 digits, released updated 2014-01-12.

Knuth says that the TeX base should change as little as possible, and that:

> The absolutely final change (to be made after my death)" will be to change the version number to Pi, at which point all remaining bugs will become features.

## TeX source code

TeX source code location: <http://tex.stackexchange.com/questions/111332/how-to-compile-the-source-code-of-tex>

The original source was in the WEB language, <http://en.wikipedia.org/wiki/WEB>, created by Knuth himself, so compiling it is messy.

The source has since been transpiled to C, and the C result is today called Web2C, which is the basis for most LaTeX distributions.

## TeX output formats

TODO can TeX output PDF? What are the supported output formats? The main (TODO only) output format for `tex` is DVI, which was created for TeX, and can then be converted to other formats like PDF. `pdflatex` converts to PDF natively, and thus allows more PDF options like URLs.

DVI can be converted quite well to PDF through `dvipdfm` which comes with TeX Live 2013 ISO. Text layer is kept and the output PDF looks good.

It seems that `pdflatex` is a complete rewrite with options only supported there: <http://tex.stackexchange.com/questions/70854/how-can-i-save-shell-output-to-a-variable-in-latex>

## Sources

-   <http://en.wikipedia.org/wiki/TeX>

    Very good background info.

-   <http://en.wikibooks.org/wiki/LaTeX/Plain_TeX>

    Short but good info on plain TeX concepts from the LaTeX wikibook.

-   <http://en.wikibooks.org/wiki/TeX>

    Good examples on every TeX primitive.

-   <https://www.gnu.org/software/teximpatient>

    TeX for the Impatient.

    Very good information.

    GNU project.

-   <http://www.ctan.org/pkg/texbook>

    Knuth's TeXbook: the de-facto standard.

    Fun to read, but a bit too verbose.
