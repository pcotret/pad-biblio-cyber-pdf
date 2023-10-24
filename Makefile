CURRENT_BIB=Octobre_2023
all:
	wget https://raw.githubusercontent.com/pcotret/Bibliography/patch-1/$(CURRENT_BIB).bib
	mv $(CURRENT_BIB).bib biblio.bib
	python3 pad2bib.py
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.aux *.log *.blg *.bbl *.out
