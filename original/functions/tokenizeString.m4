; Returns the number of words in the b register
;
tokenizeString:
		ld	hl, g_inputBuffer

l_blankStringCheck:
		; Return zero if the string only consists of 
		; zero or morespaces
		ld	a, (hl)
		inc	hl
		cp	ascii_cr
		jp	z, l_getString_returnZero
		cp	ascii_space
		jp	z, l_blankStringCheck
		ld	hl, g_inputBuffer

l_getString_trimHead:
		ld	a, (hl)
		inc	hl
		cp	ascii_space
		jp	z, l_getString_trimHead
		dec	hl
		push	hl
		ex	de, hl			; de = &g_inputBuffer[first_nonSpace-1]
		pop	hl

l_getString_findEndOfString:
		inc	hl
		ld	a, (hl)
		cp	ascii_cr
		jp	nz, l_getString_findEndOfString

l_getString_trimTail:
		dec	hl			; Move to character before cr
		ld	a, (hl)
		cp	ascii_space
		jp	z, l_getString_trimTail
		inc	hl
		ld	(hl), ascii_cr		; Replace last space with cr
		push	de			; de = &g_inputBuffer[first_nonSpace-1]

l_getString_findFirstSpace:
		inc	de
		ld	a, (de)
		cp	ascii_cr
		jp	z, l_getString_readOneWord

		cp	ascii_space
		jp	nz, l_getString_findFirstSpace

l_getString_findSecondSpace:
		inc	de
		ld	a, (de)
		cp	ascii_space
		jp	z, l_getString_findSecondSpace

l_getString_tooManyWordCheck:
		inc	de
		ld	a, (de)
		cp	ascii_cr
		jp	z, l_getString_readTwoWords
		cp	ascii_space
		jp	nz, l_getString_tooManyWordCheck
		ld	b, 3
		pop	de
		ret

l_getString_returnZero:
		ld	b, 0
		ret

l_getString_readOneWord:
		pop	de
		ld	b, 5			; Copy character count
		ld	hl, g_firstWord	; hl = &g_firstWord

l_getString_oneWordCopy:
		ld	a, (de)			; de = &g_inputBuffer[first character]
		inc	de
		cp	ascii_cr
		jp	z, l_getString_padOneWord
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, l_getString_returnOne
		jp	l_getString_oneWordCopy
; ---------------------------------------------------------------------------
		db    5
; ---------------------------------------------------------------------------

l_getString_padOneWord:
		ld	(hl), ascii_space
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, l_getString_padOneWord

l_getString_returnOne:
		ld	b, 1
		ret

l_getString_readTwoWords:
		pop	de
		ld	b, 5
		ld	hl, g_firstWord

l_getString_copyFirstOfTwo:
		ld	a, (de)
		inc	de
		cp	ascii_space
		jp	z, l_getString_padFirstOfTwo
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, l_getString_stripExtraCharacters
		jp	l_getString_copyFirstOfTwo

l_getString_padFirstOfTwo:
		ld	(hl), ascii_space
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, l_getString_padFirstOfTwo
		jp	l_getString_skipMultipleSpaces

l_getString_stripExtraCharacters:
		; Skip non-space characters from words that are longer than
		; 5 characters. e.g. Skip passed 'tory' from 'inventory'
		ld	a, (de)
		inc	de
		cp	ascii_space
		jp	nz, l_getString_stripExtraCharacters

l_getString_skipMultipleSpaces:
		ld	a, (de)
		inc	de
		cp	ascii_space
		jp	z, l_getString_skipMultipleSpaces
		ld	b, 5
		ld	hl, secondCommand
		dec	de

l_getString_copyWordTwoOfTwo:
		ld	a, (de)
		inc	de
		cp	ascii_cr
		jp	z, l_getString_padSecondWord
		ld	(hl), a
		inc	hl
		dec	b
		ld	a, b
		cp	0
		jp	z, l_returnTwo
		jp	l_getString_copyWordTwoOfTwo
; ---------------------------------------------------------------------------

l_getString_padSecondWord:
		ld	(hl), ascii_space
		inc	hl
		ld	a, b
		cp	0
		dec	b
		jp	nz, l_getString_padSecondWord

l_returnTwo:
		ld	b, 2
		ret
; End of function tokenizeString
