; ---------------------------------------------------------------------------
; Input:
;   a  - File handle number
;   hl - Pointer to file name string
; ---------------------------------------------------------------------------
fileCopyFilenameToFCB:
		cp	fh_msg
		jp	nz, loc_2E25

		ld	de, msgFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E25:
		cp	fh_bgn
		jp	nz, loc_2E30

		ld	de, bgnFCB
		jp	loc_2E33
; ---------------------------------------------------------------------------

loc_2E30:
		ld	de, spareFCB

loc_2E33:
		push	de
		push	hl
		ex	de, hl				; hl = FCB address, de = filename string

		; File FCB structure with zeroes
		ld	c, FCB_SIZE
loc_2E38:
		ld	(hl), 0
		inc	hl
		dec	c
		jp	nz, loc_2E38

		pop	hl				; hl = filename string
		pop	de				; de = FCB address

		; Set first 12 bytes of the FCB to ' '
		ld	c, 12
		ex	de, hl				; de = filename string, hl = FCB address
		push	hl				; Stack: FCB address
loc_2E45:
		ld	(hl), ' '
		inc	hl
		dec	c
		jp	nz, loc_2E45

		pop	hl				; hl = FCB address
		push	hl				; Stack: FCB address

		; Set the drive number in the FCB. A value of 0 means use the default
		; so subtract '@' from the string to get the drive value with a base of 1
		ld	a, (de)
		sub	'@'
		ld	(hl), a

		; Look for the second character as a ':'. If it is not there,
		; set the drive number to 0 (default drive)
		inc	de
		ld	a, (de)
		cp	':'
		jp	z, loc_2E5D
		ld	(hl), 0
		dec	de
		dec	de

loc_2E5D:
		inc	de
		inc	hl
		ld	c, 8

loc_2E61:
		ld	a, (de)
		cp	'.'
		jp	z, loc_2E79

		cp	0
		jp	z, loc_2E93

		ld	(hl), a
		inc	hl
		inc	de
		dec	c
		jp	nz, loc_2E61

		ld	a, (de)
		cp	'.'
		jp	nz, loc_2E93

loc_2E79:
		inc	de
		pop	hl
		push	de
		ld	de, 9
		add	hl, de
		pop	de
		ld	c, 3

loc_2E83:
		ld	a, (de)
		cp	0
		jp	z, loc_2E90
		ld	(hl), a
		inc	hl
		inc	de
		dec	c
		jp	nz, loc_2E83

loc_2E90:
		ld	a, 0
		ret
; ---------------------------------------------------------------------------

loc_2E93:
		pop	hl
		ld	a, 0
		ret
