gap ?= gap.sh


.SUFFIXES: .tex .pdf

.tex.pdf:
	latexmk -f -gg -shell-escape -pdf $<


answers/%.txt: gap/%.g
	${gap} -q -x 64 <$< >$@


all: $(patsubst gap/%.g,answers/%.txt,$(wildcard gap/**/*.g)) exercises.pdf
