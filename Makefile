all: rus.pdf tau-rus.pdf doc.pdf tau.pdf homotopy-model.pdf explicit.pdf bidirectional.pdf
all-bib: rus.bbl tau-rus.bbl doc.bbl tau.bbl homotopy-model.bbl explicit.bbl bidirectional.bbl

%.pdf: %.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{$<}'

%.bbl: %.tex
	pdflatex -halt-on-error $<
	bibtex $*.aux
