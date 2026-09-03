PYTHON ?= python3
LATEXMK ?= latexmk

.PHONY: verify paper titlepage all clean

verify:
	$(PYTHON) verification/symbolic/eb_price_reversal.py
	$(PYTHON) verification/symbolic/stage4r_lsrs_verify.py

paper:
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -cd paper/main.tex

titlepage:
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -cd paper/titlepage/titlepage.tex

all: verify paper

clean:
	$(LATEXMK) -C -cd paper/main.tex
	$(LATEXMK) -C -cd paper/titlepage/titlepage.tex
