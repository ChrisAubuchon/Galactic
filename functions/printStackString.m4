; This function prints the string that is at the function return
; address on the stack. The return address is modified to the end
; of the string before returning.
;
; The calling sequence looks like this:
;
;	 call printStackString
; 	.ascii 'Print this string'
; 	db	STRING_TERM
;	[next executed instruction]
;

printStackString:
		ex	(sp), hl
		call	sub_2F32
		ex	(sp), hl
		ret
; End of function printStackString


; =============== S U B	R O U T	I N E =======================================


sub_2F32:
		ld	a, (hl)
		cp	STRING_TERM
		ret	z
		push	af
		call	putc
		pop	af
		inc	hl
		jp	sub_2F32
; End of function sub_2F32
