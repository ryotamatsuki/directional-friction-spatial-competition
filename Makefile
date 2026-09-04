PYTHON ?= python
LATEXMK ?= latexmk

.PHONY: freeze-check verify-symbolic verify-numerical verify paper all clean

freeze-check:
	$(PYTHON) scripts/check_freeze.py

verify-symbolic:
	$(PYTHON) scripts/run_verification.py --symbolic

verify-numerical:
	$(PYTHON) scripts/run_verification.py --numerical

verify: freeze-check
	$(PYTHON) scripts/run_verification.py --all

paper:
	cd paper && $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error main.tex

all: verify paper

clean:
	cd paper && $(LATEXMK) -C main.tex || true
	rm -rf build/*
