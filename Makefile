PYTHON ?= python
LATEXMK ?= latexmk

.PHONY: freeze-check verify-symbolic verify-numerical verify paper-tables paper all clean

freeze-check:
	$(PYTHON) scripts/check_freeze.py

verify-symbolic:
	$(PYTHON) scripts/run_verification.py --symbolic

verify-numerical:
	$(PYTHON) scripts/run_verification.py --numerical

verify: freeze-check
	$(PYTHON) scripts/run_verification.py --all

paper-tables:
	$(PYTHON) scripts/generate_paper_tables.py

paper: paper-tables
	cd paper && $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error main.tex

all: verify paper

clean:
	cd paper && $(LATEXMK) -C main.tex || true
	rm -rf build/*
	rm -f paper/tables/witness_summary.tex paper/tables/welfare_summary.tex
