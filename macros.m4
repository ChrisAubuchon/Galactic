divert(`-1')

# Convert a base 10 number to an Intel style hexadecimal number
#
define(`toIntel', `ifelse(regexp(`$1', `^[0-9]$'), `0', `$1', ifelse(regexp(format(`%X', `$1'), `^[A-F]'), `-1', format(`%Xh', `$1'), format(`0%Xh', `$1')))')

# Convert an Intel style hexadecimal number to a base 10 number
#
define(`fromIntel', `ifelse(regexp(`$1', `h$'), `-1', `$1', format(`%d', eval(`0x'patsubst(`$1', `h$', `'))))')

# Expand to printFromMSGFile call
#
define(`printMessage', `ld	d, toIntel(eval(fromIntel($1) >> 8))
		ld	e, toIntel(eval(fromIntel($1) & 0xff))
		call	printFromMSGFile')

# Expand to db list
#
define(`wordToBytes',	`ifelse(`$1', `0', `0, 0', `toIntel(eval(fromIntel($1) >> 8)), toIntel(eval(fromIntel($1) & 0xff))')')

# Room macro
#
define(`ROOM', `db $2					; scoreBonus
		db $3					; roomFlags
		db wordToBytes($4)			; verbose_offset
		db wordToBytes($5)			; terse_offset
		db wordToBytes($6)			; firstMaybe_offset
		db wordToBytes($7)			; offset_probably
		db $8					; north_room
		db $9					; south_room
		db $10					; east_room
		db $11					; west_room
		db $12					; ne_room
		db $13					; nw_room
		db $14					; se_room
		db $15					; sw_room
		db $16					; up_room
		db $17					; down_room
		db $18					; cw_room
		db $19					; ccw_room
		db $20					; enter_room
		db $21					; exit_room
		db $22					; inward_room
		db $23					; outward_room')

# Terminal sequence macros
#
define(`TRANSMIT_PAGE', `db key_ESC, ''#')							# 1Bh, 23h
define(`ENTER_INSERT_MODE', `db_key_ESC, ''@')							# 1Bh, 40h
define(`CURSOR_DOWN', `db key_ESC, ''B')dnl							# 1Bh, 42h
define(`CURSOR_LEFT', `db key_ESC, ''D')dnl							# 1Bh, 44h
define(`CLEAR_DISPLAY', `db key_ESC, ''E')dnl							# 1Bh, 45h
define(`ENTER_GRAPHICS_MODE', `db key_ESC, ''F')dnl						# 1Bh, 46h
define(`EXIT_GRAPHICS_MODE', `db key_ESC, ''G')dnl						# 1Bh, 47h
define(`ERASE_EOL', `db key_ESC, ''K')dnl							# 1Bh, 4Bh
define(`SET_CURSOR_ADDRESS', `db key_ESC, ''Y'`, toIntel(eval($1+31)), toIntel(eval($2+31))')	# 1Bh, 59h
define(`ENTER_REVERSE_VIDEO_MODE', `db key_ESC, ''p')dnl					# 1Bh, 70h
define(`EXIT_REVERSE_VIDEO_MODE', `db key_ESC, ''q')dnl						# 1Bh, 71h
define(`SET_MODE', `db key_ESC, ''x'`, ''$1')							# 1Bh, 78h
define(`KEYBOARD_ENABLE', `db key_ESC, ''{')dnl							# 1Bh, 7Bh
define(`KEYBOARD_DISABLE', `db key_ESC, ''}')dnl						# 1Bh, 7Dh
define(`STRING_TERM', `80h')
divert`'dnl
