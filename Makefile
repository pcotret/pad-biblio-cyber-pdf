all:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.aux *.log *.blg *.bbl *.out