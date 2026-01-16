# !/bin/bash

filename=$1

pdflatex --interaction nonstopmode --shell-escape ${filename}.tex # >/dev/null
# pdflatex --interaction nonstopmode --shell-escape ${filename}.tex # >/dev/null
makeindex -c -s myindex.ist ${filename}.idx # >/dev/null
# bibtex ${filename} # >/dev/null
biber ${filename} # >/dev/null
makeindex -c -s myindex.ist ${filename}.idx # >/dev/null
pdflatex  --interaction nonstopmode  --shell-escape ${filename}.tex # >/dev/null
# pdflatex --interaction nonstopmode --shell-escape ${filename}.tex # >/dev/null
# Need to call pdflatex one more time for the references to appear correctly
pdflatex  --interaction nonstopmode  --shell-escape ${filename}.tex # >/dev/null
