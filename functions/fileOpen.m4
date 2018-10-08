; ---------------------------------------------------------------------------
; Open a file
;
; a - File control block to use (fh_* macros)
; ---------------------------------------------------------------------------
fileOpen:
		push	af
		call	sub_2E1A
		cp	1
		jp	z, loc_2D86
		pop	af
		cp	fh_msg
		jp	nz, loc_2D6B
		ld	de, msgFCB
		jp	loc_2D79

loc_2D6B:
		cp	fh_bgn
		jp	nz, loc_2D76
		ld	de, bgnFCB
		jp	loc_2D79

loc_2D76:
		ld	de, spareFCB

loc_2D79:
		ld	c, bdos_f_open
		call	bdos_func
		cp	0FFh
		jp	z, loc_2D87
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2D86:
		pop	af

loc_2D87:
		ld	a, 1
		ret
