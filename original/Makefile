all: galactic.asm bgn.asm

galactic.asm: galactic.m4
	m4 -I. < galactic.m4 > galactic.asm

bgn.asm: bgn.m4
	m4 -I. < bgn.m4 > bgn.asm

clean:
	-rm galactic.asm bgn.asm

.PHONY: galactic.asm bgn.asm
