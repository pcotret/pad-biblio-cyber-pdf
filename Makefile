CURRENT_BIB=Biblio_Avril_2024
ARTICLES=Articles_essentiels
THESES=Theses_Rapports
all:
	wget https://raw.githubusercontent.com/M82-project/Bibliography/main/$(CURRENT_BIB).bib
	mv $(CURRENT_BIB).bib bcur.bib
	wget https://raw.githubusercontent.com/M82-project/Bibliography/main/$(ARTICLES).bib
	mv $(ARTICLES).bib bart.bib
	wget https://raw.githubusercontent.com/M82-project/Bibliography/main/$(THESES).bib
	mv $(THESES).bib bphd.bib
	python3 pad2bib.py
	pdflatex main.tex
	bibtex cur
	bibtex art
	bibtex phd
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.aux *.log *.blg *.bbl *.out *.fdb_latexmk *.fls *.synctex.gz
