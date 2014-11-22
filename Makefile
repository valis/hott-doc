rus.pdf: rus.tex
	pdflatex -halt-on-error rus.tex
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{rus.tex}'

rus.bbl: rus.tex
	pdflatex -halt-on-error rus.tex
	bibtex rus.aux

doc.pdf: doc.tex
	pdflatex -halt-on-error doc.tex
	pdflatex -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{doc.tex}'

doc.bbl: doc.tex
	pdflatex -halt-on-error doc.tex
	bibtex doc.aux
