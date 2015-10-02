all: rus.pdf tau-rus.pdf doc.pdf tau.pdf homotopy-model.pdf bidirectional.pdf abstract-tt.pdf composable-tt.pdf alg-syn-tt.pdf vclang.pdf
all-bib: rus.bbl tau-rus.bbl doc.bbl tau.bbl homotopy-model.bbl bidirectional.bbl abstract-tt.bbl composable-tt.bbl alg-syn-tt.bbl vclang.bbl

%.pdf: %.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{$<}'

%.bbl: %.tex
	pdflatex -halt-on-error $<
	bibtex $*.aux
