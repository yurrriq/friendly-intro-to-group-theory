gap ?= gap.sh


.SUFFIXES: .g .pdf .tex .txt

.tex.pdf:
	latexmk -f -gg -shell-escape -pdf $<

.g.txt:
	${gap} -q -x 64 <$< >$@


all: $(wildcard **/*.txt) exercises.pdf
