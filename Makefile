all: out/model-structures.pdf out/alg-lin.pdf out/alg-models.pdf out/rus.pdf out/tau-rus.pdf out/doc.pdf out/tau.pdf out/homotopy-model.pdf out/bidirectional.pdf out/abstract-tt.pdf out/composable-tt.pdf out/alg-tt-ams.pdf out/alg-tt-els.pdf out/vclang.pdf
all-bib: out/model-structures.bbl out/alg-lin.bbl out/alg-models.bbl out/rus.bbl out/tau-rus.bbl out/doc.bbl out/tau.bbl out/homotopy-model.bbl out/bidirectional.bbl out/abstract-tt.bbl out/composable-tt.bbl out/alg-tt-ams.bbl out/alg-tt-els.bbl out/vclang.bbl

out/%.pdf: %.tex
	pdflatex -output-directory out -halt-on-error $<
	pdflatex -output-directory out -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{$<}'

out/%.bbl: %.tex
	pdflatex -output-directory out -halt-on-error $<
	bibtex out/$*.aux
