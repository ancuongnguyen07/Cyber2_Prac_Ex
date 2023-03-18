SHELL := /bin/bash

MAIN=answer_sheet
TEXSRC=$(wildcard *.tex)
BIBSRC=$(wildcard *.bib)
DIR_BUILD=build
# OPT= --interaction=nonstopmode

all: $(DIR_BUILD)/$(MAIN).pdf

$(DIR_BUILD)/$(MAIN).pdf: $(TEXSRC) $(BIBSRC)
	latexmk -pdf -pdflatex="texfot pdflatex" $(MAIN) -auxdir=$(DIR_BUILD) -outdir=$(DIR_BUILD)

clean:
	rm -f $(DIR_BUILD)/*
	rm -f answer_sheet.{aux,bbl,bcf,blg,fdb_latexmk,fls,lof,log,out,run.xml,synctex.gz,toc}


.PHONY: clean all