
dissertation.pdf: dissertation.tex intro.tex conclusions.tex annotated.bib cem_appendix.tex coq_appendix.tex background.tex
	xelatex dissertation.tex
	bibtex dissertation
	xelatex dissertation.tex
	xelatex dissertation.tex

clean:
	rm dissertation.pdf
	rm dissertation.aux
	rm dissertation.log
	rm dissertation.bbl
	rm dissertation.blg

view: dissertation.pdf
	mupdf dissertation.pdf
