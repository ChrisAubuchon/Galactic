parseInput:
		push	af
		push	bc
		push	de
		push	hl
		call	readString
		call	tokenizeString
		ld	a, b
		cp	0
		jp	nz, loc_1FAD

		printMessage(s_talkLouder)
		ld	a, 0
		ld	(g_inputWordCount), a
		jp	l_parseInput_return

loc_1FAD:
		cp	3
		jp	c, loc_1FC1

		printMessage(s_tooManyWords)
		ld	a, 0
		ld	(g_inputWordCount), a
		jp	l_parseInput_return

loc_1FC1:
		cp	2
		jp	z, l_parseInput_parseTwoWordCommand

		ld	de, g_firstWord
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		call	searchVocabulary
		ld	a, (playerCommand)
		cp	p_invalid
		jp	nz, l_parseInput_returnOneWordCommand

; ---------------------------------------------------------------------------
; Print one of 4 messages for an unknown word
; ---------------------------------------------------------------------------

l_parseInput_printRandomUnknownMessage:
		ld	b, 1
		ld	c, 4
		call	pseudoRNG
		cp	1
		jp	nz, loc_1FF3
		printMessage(s_dontKnowWord)
		jp	loc_2018

loc_1FF3:
		cp	2
		jp	nz, loc_2002
		printMessage(s_dontUnderstand)
		jp	loc_2018

loc_2002:
		cp	3
		jp	nz, loc_2011
		printMessage(s_what)
		jp	loc_2018

loc_2011:
		printMessage(s_usingUnknownWords)

loc_2018:
		ld	a, 0
		ld	(g_inputWordCount), a
		jp	l_parseInput_return

; ---------------------------------------------------------------------------

l_parseInput_returnOneWordCommand:
		ld	a, 1
		ld	(g_inputWordCount), a
		jp	l_parseInput_return
; ---------------------------------------------------------------------------

l_parseInput_parseTwoWordCommand:
		ld	de, g_firstWord
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		call	searchVocabulary
		ld	a, (playerCommand)
		cp	p_invalid
		jp	z, l_parseInput_printRandomUnknownMessage
		ld	(firstToken), a
		ld	de, secondCommand
		ld	hl, g_tmpAbbreviationBuffer
		ld	bc, 5
		call	abbreviateWord
		call	searchVocabulary
		ld	a, (playerCommand)
		cp	p_invalid
		jp	z, l_parseInput_printRandomUnknownMessage
		ld	(secondToken), a
		ld	a, 2
		ld	(g_inputWordCount), a

l_parseInput_return:
		pop	hl
		pop	de
		pop	bc
		pop	af
		ret
; End of function parseInput
