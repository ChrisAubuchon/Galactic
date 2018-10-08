addByteToHL:
		push	de
		ld	e, a
		ld	d, 0
		add	hl, de
		pop	de
		ret
