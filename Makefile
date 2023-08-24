old-pdf:
	pandoc --pdf-engine /Library/TeX/texbin/pdflatex --biblio ref.bib --csl ieee.csl --mathjax --number-sections --citeproc -f markdown -o old-whitepaper.pdf old-whitepaper.md

pdf:
	latexmk -pdf -shell-escape -xelatex main.tex 
	mv main.pdf 2023-Anoma-whitepaper.pdf
.PHONY: pdf
