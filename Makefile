CURRENT_BIB=mai_2023
all:
	wget https://raw.githubusercontent.com/BartM82/Bibliography/main/$(CURRENT_BIB).bib 
	mv $(CURRENT_BIB).bib biblio.bib
	python3 pad2bib.py
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex
clean:
	rm *.aux *.log *.blg *.bbl *.out
