SHELL = /bin/bash

### Compilation Flags
PDFLATEX_FLAGS  = -halt-on-error -output-directory obj/

TEXINPUTS = .:obj/
TEXMFOUTPUT = obj/

main.pdf: *.tex
	if [ ! -d obj ]; then mkdir obj; fi
	xelatex $(PDFLATEX_FLAGS) main
	mv obj/main.pdf ./

all: main.tex main.bib *.tex
	if [ ! -d obj ]; then mkdir obj; fi
	xelatex $(PDFLATEX_FLAGS) main
	bibtex obj/main
	makeindex obj/main
	xelatex $(PDFLATEX_FLAGS) main
	xelatex $(PDFLATEX_FLAGS) main
	mv obj/main.pdf ./

display: main.pdf
	evince main.pdf

clean:
	rm -rf obj main.pdf

