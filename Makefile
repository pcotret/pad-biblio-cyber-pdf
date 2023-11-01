CURRENT_BIB=Biblio_Oct_23
all:
	wget https://raw.githubusercontent.com/M82-project/Bibliography/main/$(CURRENT_BIB).bib
	mv $(CURRENT_BIB).bib biblio.bib
	python3 pad2bib.py
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.aux *.log *.blg *.bbl *.out
