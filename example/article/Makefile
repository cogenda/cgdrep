all: main.pdf

### Compilation Flags
PDFLATEX_FLAGS  = -halt-on-error -output-directory obj/

TEXINPUTS = .:obj/
TEXMFOUTPUT = obj/

main.pdf: main.tex main.bib *.tex
	[[ -d obj/ ]] || mkdir obj
	xelatex $(PDFLATEX_FLAGS) main
	bibtex obj/main
	xelatex $(PDFLATEX_FLAGS) main
	xelatex $(PDFLATEX_FLAGS) main
	mv obj/main.pdf ./

display: main.pdf
	evince main.pdf

clean:
	rm -rf obj
	rm -rf main.pdf


