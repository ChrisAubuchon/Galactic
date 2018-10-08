printMsgAtHL:
		ld	d, (hl)
		inc	hl
		ld	e, (hl)
		dec	hl
		nop
		call	printFromMSGFile
		ret
