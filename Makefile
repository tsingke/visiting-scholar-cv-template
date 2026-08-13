# ==================================================================== #
#  Makefile --- Academic Visiting-Scholar CV Template
#  Targets:
#    make          build both English and Chinese editions
#    make en       build English edition only
#    make zh       build Chinese edition only
#    make clean    remove auxiliary files (keep PDFs)
#    make distclean remove auxiliary files AND PDFs
# ==================================================================== #

EN_MAIN := main-en
ZH_MAIN := main-zh

.PHONY: all en zh clean distclean

all: en zh

en:
	latexmk -xelatex $(EN_MAIN).tex

zh:
	latexmk -xelatex $(ZH_MAIN).tex

clean:
	latexmk -c $(EN_MAIN).tex $(ZH_MAIN).tex 2>/dev/null || true
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.xdv

distclean: clean
	rm -f $(EN_MAIN).pdf $(ZH_MAIN).pdf
