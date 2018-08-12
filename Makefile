all: out/dhott.pdf out/indexed-tt-ams.pdf out/indexed-tt-mscs.pdf out/marked-obj-ams.pdf out/marked-obj-tac.pdf out/cart-models.pdf out/morita-equiv.pdf out/model-structures-ams.pdf out/model-structures-tac.pdf out/alg-lin.pdf out/alg-models-ams.pdf out/alg-models-mscs.pdf out/rus.pdf out/tau-rus.pdf out/doc.pdf out/tau.pdf out/homotopy-model.pdf out/bidirectional.pdf out/abstract-tt.pdf out/composable-tt.pdf out/alg-tt.pdf out/alg-tt-ams.pdf out/vclang.pdf
all-bib: out/dhott.bbl out/indexed-tt-ams.bbl out/indexed-tt-mscs.bbl out/marked-obj-tac.bbl out/morita-equiv.bbl out/model-structures-ams.bbl out/model-structures-tac.bbl out/alg-lin.bbl out/alg-models-ams.bbl out/alg-models-mscs.bbl out/rus.bbl out/tau-rus.bbl out/doc.bbl out/tau.bbl out/homotopy-model.bbl out/bidirectional.bbl out/abstract-tt.bbl out/composable-tt.bbl out/alg-tt-ams.bbl out/vclang.bbl

out/%.pdf: %.tex
	pdflatex -output-directory out -halt-on-error $<
	pdflatex -output-directory out -halt-on-error '\providecommand{\WarningsAreErrors}{true}\input{$<}'

out/%.bbl: %.tex
	pdflatex -output-directory out -halt-on-error $<
	bibtex out/$*.aux
