l_inline_help:
		cp	p_help
		jp	nz, l_inline_look
		printMessage(s_helpMessage)
		jp	l_mainLoop
