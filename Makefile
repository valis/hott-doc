doc.pdf: doc.tex
	pdflatex -halt-on-error doc.tex
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{doc.tex}'

doc.bbl: doc.tex
	pdflatex -halt-on-error doc.tex
	bibtex doc.aux
