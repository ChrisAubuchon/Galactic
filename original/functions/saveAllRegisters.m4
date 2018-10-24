saveAllRegisters:
					; printFromMSGFilep
		ex	(sp), hl
		push	de
		push	bc
		push	af
		jp	(hl)
