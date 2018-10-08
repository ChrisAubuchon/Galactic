all: galactic.asm

galactic.asm: galactic.m4 messages.m4 macros.m4 constants.m4
	m4 -I. < galactic.m4 > galactic.asm

clean:
	-rm galactic.asm

.PHONY: galactic.asm
