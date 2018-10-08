; This function	abbreviates an input words to a specified length. (e.g. 'INVENTORY' -> 'INVEN')
; bc is the desired length of the string. 

abbreviateWord:
		ld	a, (de)
		ld	(hl), a
		inc	de
		inc	hl
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	nz, abbreviateWord
		ret
