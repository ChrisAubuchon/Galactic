; ---------------------------------------------------------------------------
; Read data from a file handle
;
; bc - Bytes to read
; de - Destination address
; ---------------------------------------------------------------------------
fileRead:
		ld	(g_fileRead_savedFh), a
		ld	l, b
		ld	h, 0
		add	hl, hl
		ld	b, h
		ld	c, l
		inc	bc				; bc = number of pages to read + 1

loc_2D94:
		dec	bc
		ld	a, b
		or	c
		cp	0
		jp	z, l_fileRead_returnZero
		push	bc
		ld	c, bdos_f_dmaoff
		push	de
		call	bdos_func			; Set DMA destination address
		ld	a, (g_fileRead_savedFh)
		cp	fh_msg
		jp	nz, loc_2DB1
		ld	de, msgFCB
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DB1:
		cp	fh_bgn
		jp	nz, loc_2DBC
		ld	de, bgnFCB
		jp	loc_2DBF
; ---------------------------------------------------------------------------

loc_2DBC:
		ld	de, spareFCB

loc_2DBF:
		push	de
		ld	c, bdos_f_readrand
		call	bdos_func
		cp	0
		jp	nz, l_fileRead_returnOne
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
		jp	loc_2D94
; ---------------------------------------------------------------------------
g_fileRead_savedFh:	db 0		; Saved copy of source file handle
; ---------------------------------------------------------------------------

l_fileRead_returnOne:
		pop	de
		pop	de
		pop	bc
		ld	a, 1
		ret

l_fileRead_returnZero:
		ld	a, 0
		ret
