all: rus.pdf tau-rus.pdf doc.pdf

%.pdf: %.tex
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{$<}'

%.bbl: %.tex
	pdflatex -halt-on-error $<
	bibtex $*.aux
