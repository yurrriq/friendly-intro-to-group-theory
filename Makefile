latexmk_flags := -shell-escape -outdir=../docs -pdf -cd

.PHONY: docs/exercises.pdf

docs/exercises.pdf:
	${MAKE} -C src
	latexmk -f -gg ${latexmk_flags} src/exercises.tex
	latexmk -c ${latexmk_flags} src/exercises.tex

src/answer/%.txt: src/gap/%.g
	echo 'Print( Answer, "\n" );;' | \
	gap -x 64 -q $< | \
	sed -E -e 's/\r//' -e 's/[[:space:]]*$$//' >$@
