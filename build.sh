#!/bin/bash

set -e

FILE="CoDa_uncertainty_AJS"
FIGS="figure"

rm -rf "${FIGS}"
Rscript -e "library(knitr); knit('${FILE}.Rnw')"
latexmk -pdf -pdflatex="pdflatex --shell-escape %O %S" -bibtex -pv "${FILE}"
latexmk -c "${FILE}"
