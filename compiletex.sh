#!/bin/bash
#Compile LaTeX document into PDF --
DOCNAME="${1%.*}"
pdflatex $DOCNAME.tex
if [ $? -ne 0 ]; then
	echo "Compileration error. Check log."
	exit 1
fi

if [[ $2 == 1 ]]; then
	bibtex $DOCNAME.aux
fi
if [[ $2 == 2 ]]; then
	biber $DOCNAME.bcf
fi
pdflatex $DOCNAME.tex
pdflatex $DOCNAME.tex
exit 0
