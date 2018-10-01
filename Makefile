all: galactic.asm

galactic.asm: galactic.m4 messages.m4 macros.m4
	m4 -I. < galactic.m4 > galactic.asm

.PHONE: galactic.asm
