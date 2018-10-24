divert(`-1')dnl

# SCORE(amount)
# Increase the players score by a set amount
#
define(`IncreaseScore', `ld	a, fromIntel($1)
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl')

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


# HI_BYTE and LO_BYTE macros
# Galactic uses the high and low bytes of messages throughout the code.
# These macros substiture the high byte and low byte of the message word.
#
define(`HI_BYTE',	`toIntel(eval(fromIntel($1) >> 8))')
define(`LO_BYTE',	`toIntel(eval(fromIntel($1) & 0xff))')


# Object macro
#
define(`OBJECT', `$1			.TAG	object_t
$1:			ds 6')

# Hireable macro
#
#
define(`HIREABLE', `ifelse(`$1', `', `				ds 3', `$1			.TAG hireable_t
$1:			ds 3')')

# Landing macro
#
#
define(`LANDABLE', `$1		.TAG landable_t
$1:		ds 3')

# Room macro
#
# First field is the room name and is not used in the code.
#
define(`ROOM', `ds 1Ah')

# BITMASK(flag, ...)
#   ORs all arguments into one number. Intel style hex numbers are converted
# to base 10 numbers. The end result is converted back to an Intel style hex
# string
#
define(`BITMASK', `toIntel(_bitmask(`0', $@))')dnl
define(`_bitmask', `ifelse(`$#', `1', fromIntel($1), `ifelse(`$2', `', `$0($1)', `$0(`eval($1 | fromIntel($2))', shift(shift($@)))')')')

# DIRECTWALK(room x10)
#
# A list of rooms that can directly walk to this room. The first field is the
# destination room and is ignored.
#
define(`DIRECTWALK', `db $2, $3, $4, $5, $6, $7, $8, $9, $10, $11')

# TO_COORD
#
# H89 cursor coordinates are (value + 0x1f) for some reason
#
define(`TO_COORD', `ifelse(`$1', `0', `0', toIntel(eval($1+31)))')

# Locker coordinates
#
define(`LOCKER_COORDS', `TO_COORD($1), TO_COORD($2)')

# Terminal sequence macros
#
define(`TRANSMIT_PAGE', `key_ESC, ''`#'')dnl						# 1Bh, 23h
define(`ENTER_INSERT_MODE', `key_ESC, ''@')dnl						# 1Bh, 40h
define(`CURSOR_DOWN', `key_ESC, ''B')dnl						# 1Bh, 42h
define(`CURSOR_LEFT', `key_ESC, ''D')dnl						# 1Bh, 44h
define(`CLEAR_DISPLAY', `key_ESC, ''E')dnl						# 1Bh, 45h
define(`ENTER_GRAPHICS_MODE', `key_ESC, ''F')dnl					# 1Bh, 46h
define(`EXIT_GRAPHICS_MODE', `key_ESC, ''G')dnl						# 1Bh, 47h
define(`ERASE_EOL', `key_ESC, ''K')dnl							# 1Bh, 4Bh
define(`SET_CURSOR_ADDRESS', `key_ESC, ''Y'`, TO_COORD($1), TO_COORD($2+31)')dnl	# 1Bh, 59h
define(`ENTER_REVERSE_VIDEO_MODE', `key_ESC, ''p')dnl					# 1Bh, 70h
define(`EXIT_REVERSE_VIDEO_MODE', `key_ESC, ''q')dnl					# 1Bh, 71h
define(`SET_MODE', `key_ESC, ''x'`, ''$1')dnl						# 1Bh, 78h
define(`KEYBOARD_ENABLE', `key_ESC, ''{')dnl						# 1Bh, 7Bh
define(`KEYBOARD_DISABLE', `key_ESC, ''}')dnl						# 1Bh, 7Dh
define(`STRING_TERM', `80h')dnl
divert`'dnl
