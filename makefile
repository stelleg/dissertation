
dissertation.pdf: dissertation.tex intro.tex annotated.bib
	pdflatex dissertation.tex
	bibtex dissertation
	pdflatex dissertation.tex
	pdflatex dissertation.tex

clean:
	rm dissertation.pdf
	rm dissertation.aux
	rm dissertation.log
	rm dissertation.bbl
	rm dissertation.blg

view: dissertation.pdf
	mupdf dissertation.pdf
