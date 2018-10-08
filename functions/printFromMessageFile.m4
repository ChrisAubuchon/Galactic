
printFromMSGFile:

; FUNCTION CHUNK AT 1C0E SIZE 0000000A BYTES
; FUNCTION CHUNK AT 2FFE SIZE 00000074 BYTES

		call	saveAllRegisters
		ld	c, d
		ld	b, 0
		push	de
		ld	a, 1
		call	sub_2DEF
		ld	a, 1
		ld	bc, 100h
		ld	de, readDMAAddress
		call	fileRead
		cp	1
		jp	z, loc_1C0E
		pop	de
		ld	hl, readDMAAddress
		ld	a, e
		call	addByteToHL
		ld	b, h
		ld	c, l

loc_2F72:
		ld	hl, decompMaybeBuffer
		ld	d, 7

loc_2F77:
		ld	a, (bc)
		inc	bc
		ld	(hl), a
		inc	hl
		inc	e
		ld	a, e
		cp	0
		call	z, sub_2FD9
		dec	d
		ld	a, d
		cp	0
		jp	z, loc_2F8C
		jp	loc_2F77
; ---------------------------------------------------------------------------

loc_2F8C:
		ld	hl, decompMaybeBuffer
		push	bc
		ld	c, 0

loc_2F92:
		ld	a, c
		cp	0
		jp	z, loc_2FFE
		cp	1
		jp	z, loc_3005
		cp	2
		jp	z, loc_3015
		cp	3
		jp	z, loc_3027
		cp	4
		jp	z, loc_303B
		cp	5
		jp	z, loc_304D
		cp	6
		jp	z, loc_305D
		cp	7
		jp	z, loc_306B

loc_2FBB:
					; printFromMSGFile+C6j	...
		inc	c
		cp	0
		jp	z, loc_2FD3
		call	putc
		jp	loc_2F92
; ---------------------------------------------------------------------------

loc_2FC7:
		pop	bc
		cp	0
		jp	z, loc_2FD4
		call	putc
		jp	loc_2F72
; ---------------------------------------------------------------------------

loc_2FD3:
		pop	bc

loc_2FD4:
		pop	af
		pop	bc
		pop	de
		pop	hl
		ret
; End of function printFromMSGFile


; =============== S U B	R O U T	I N E =======================================


sub_2FD9:
		push	hl
		push	de
		push	bc
		ld	a, 1
		ld	bc, 100h
		ld	de, readDMAAddress
		call	fileRead
		cp	1
		jp	z, loc_2FF3
		pop	bc
		pop	de
		pop	hl
		ld	bc, readDMAAddress
		ret
; ---------------------------------------------------------------------------

loc_2FF3:
		pop	bc
		pop	de
		pop	hl
		ret
; End of function sub_2FD9

; ---------------------------------------------------------------------------
decompMaybeBuffer:db [ 7 ], 0		; DATA XREF: printFromMSGFile:loc_2F72o
					; printFromMSGFile:loc_2F8Co
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR printFromMSGFile

loc_2FFE:
		ld	a, (hl)
		rrca
		and	7Fh ; ''
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3005:
		ld	a, (hl)
		rrca
		rrca
		and	40h ; '@'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		and	3Fh ; '?'
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3015:
		ld	a, (hl)
		rrca
		rrca
		rrca
		and	60h ; '`'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		rrca
		and	1Fh
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_3027:
		ld	a, (hl)
		rrca
		rrca
		rrca
		rrca
		and	70h ; 'p'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rrca
		rrca
		rrca
		rrca
		and	0Fh
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_303B:
		ld	a, (hl)
		rlca
		rlca
		rlca
		and	78h ; 'x'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		rlca
		rlca
		and	7
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_304D:
		ld	a, (hl)
		rlca
		rlca
		and	7Ch ; '|'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		rlca
		and	3
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_305D:
		ld	a, (hl)
		rlca
		and	7Eh ; '~'
		ld	d, a
		inc	hl
		ld	a, (hl)
		rlca
		and	1
		add	a, d
		jp	loc_2FBB
; ---------------------------------------------------------------------------

loc_306B:
		ld	a, (hl)
		and	7Fh ; ''
		inc	hl
		jp	loc_2FC7
