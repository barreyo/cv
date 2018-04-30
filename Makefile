
MAIN_FILE 	= cv.tex
OUT_FILE 	= cv
MD_OUT 		= README

.PHONY: pdf md open clean

pdf: $(OUT_FILE).pdf
	open $^

md: $(OUT_FILE).md
	mv $(OUT_FILE).md $(MD_OUT).md

%.pdf: %.tex
	texliveonfly $< $@

%.md: %.tex
	pandoc -s $< -o $@

open:
	@open $(OUT_FILE).pdf

clean:
	rm -f *.pdf *.html *.log *.dvi *.aux *.synctex.gz
