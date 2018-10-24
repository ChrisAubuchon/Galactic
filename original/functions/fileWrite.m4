; ---------------------------------------------------------------------------
; Input:
;   a  - File handle index
;   bc - Bytes to write
;   de - Base offset to write
; ---------------------------------------------------------------------------
fileWrite:
		ld	(g_fileWrite_fh), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc

loc_2CEC:
		dec	bc
		ld	a, b
		or	c
		cp	0
		ret	z
		push	bc
		ld	c, bdos_f_dmaoff
		push	de
		call	bdos_func
		ld	a, (g_fileWrite_fh)
		cp	1
		jp	nz, loc_2D07
		ld	de, msgFCB
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D07:
		cp	2
		jp	nz, loc_2D12
		ld	de, bgnFCB
		jp	loc_2D15
; ---------------------------------------------------------------------------

loc_2D12:
		ld	de, msgFCB

loc_2D15:
		push	de
		ld	c, bdos_f_writerand
		call	bdos_func
		pop	de
		ld	hl, 21h	; '!'
		add	hl, de
		ld	c, (hl)
		inc	hl
		ld	b, (hl)
		inc	bc
		inc	hl
		ld	(hl), 0
		dec	hl
		ld	(hl), b
		dec	hl
		ld	(hl), c
		pop	de
		ex	de, hl
		ld	de, 80h	; '€'
		add	hl, de
		ex	de, hl
		pop	bc
		jp	loc_2CEC
; End of function fileWrite

g_fileWrite_fh:	db 0			; Saved file handle number
