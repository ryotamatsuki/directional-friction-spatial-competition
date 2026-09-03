PYTHON ?= python3
LATEXMK ?= latexmk

.PHONY: verify paper all clean

verify:
	$(PYTHON) verification/symbolic/eb_price_reversal.py
	$(PYTHON) verification/symbolic/stage4r_lsrs_verify.py

paper:
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -cd paper/main.tex

all: verify paper

clean:
	$(LATEXMK) -C -cd paper/main.tex
