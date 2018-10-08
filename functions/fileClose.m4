; ---------------------------------------------------------------------------
; Close a file handle
;
; a - File Control block to use (fh_* macros)
; ---------------------------------------------------------------------------
fileClose:
		cp	fh_msg
		jp	nz, loc_2D42
		ld	de, msgFCB
		jp	loc_2D50

loc_2D42:
		cp	fh_bgn
		jp	nz, loc_2D4D
		ld	de, bgnFCB
		jp	loc_2D50

loc_2D4D:
		ld	de, spareFCB

loc_2D50:
		ld	c, bdos_f_close
		call	bdos_func
		ret
