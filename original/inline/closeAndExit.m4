
l_inline_closeAndExit:
		ld	a, 1
		call	fileClose

l_inline_exit:
		ld	a, 1
		call	exit
