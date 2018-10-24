; ---------------------------------------------------------------------------
; Input:
;   a  - file handle
;   hl - File name buffer
; ---------------------------------------------------------------------------
fileCreate:
		push	af
		call	fileCopyFilenameToFCB
		cp	1
		jp	z, loc_2CDE
		pop	af
		cp	fh_msg
		jp	nz, loc_2CBC
		ld	de, msgFCB
		jp	loc_2CCA

loc_2CBC:
		cp	fh_bgn
		jp	nz, loc_2CC7
		ld	de, bgnFCB
		jp	loc_2CCA
; ---------------------------------------------------------------------------

loc_2CC7:
		ld	de, spareFCB

loc_2CCA:
		push	de
		ld	c, bdos_f_delete
		call	bdos_func
		pop	de
		ld	c, bdos_f_make
		call	bdos_func
		cp	0FFh
		jp	z, loc_2CDE
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2CDE:
		pop	af
		ld	a, 1
		ret
