; ---------------------------------------------------------------------------
; This function sets the page number for random access in the file control
; block for the file handle passed in in a.
;
; Inputs:
;   a - File handle number
;   c - Page number 
; ---------------------------------------------------------------------------
fileSetDMAPage:
		cp	fh_msg
		jp	nz, loc_2DFA
		ld	hl, msgFCB
		jp	loc_2E08

loc_2DFA:
		cp	fh_bgn
		jp	nz, loc_2E05
		ld	hl, bgnFCB
		jp	loc_2E08
; ---------------------------------------------------------------------------

loc_2E05:
		ld	hl, spareFCB

loc_2E08:
		ld	de, 21h
		add	hl, de			; hl = fcb.fcb_rnd
		or	a
		ld	a, c
		rla
		ld	c, a
		ld	a, b
		rla
		ld	b, a
		ld	(hl), c
		inc	hl
		ld	(hl), b
		inc	hl
		ld	(hl), 0
		ret
; End of function fileSetDMAPage
