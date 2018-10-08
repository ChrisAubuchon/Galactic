hasInventoryRoom:
		ld	a, (carriedItemCount)
		cp	9
		jp	c, loc_2111
		ld	b, 0
		ret
; ---------------------------------------------------------------------------

loc_2111:
		add	a, 1
		ld	(carriedItemCount), a
		ld	b, 1
		ret
