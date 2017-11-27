gap      ?= gap.sh
gap_srcs := $(wildcard gap/**/*.g)
answers  := $(patsubst gap/%.g,answer/%.txt,${gap_srcs})

all: ${answers}

answers/%.txt: gap/%.g
	${gap} -q -x 64 <$< >$@
