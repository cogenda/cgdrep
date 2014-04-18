all: main_en.pdf

### Compilation Flags
PDFLATEX_FLAGS  = -halt-on-error -output-directory obj/

TEXINPUTS = .:obj/
TEXMFOUTPUT = obj/

main_en.pdf: main_en.tex 
	[[ -d obj/ ]] || mkdir obj
	xelatex $(PDFLATEX_FLAGS) main_en
	bibtex obj/main_en
	xelatex $(PDFLATEX_FLAGS) main_en
	xelatex $(PDFLATEX_FLAGS) main_en
	mv obj/main_en.pdf ./

clean:
	rm -rf obj
	rm -rf main_en.pdf


