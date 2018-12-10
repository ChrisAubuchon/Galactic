define(`galactic_m4lib', `')

# Convert a base 10 number to an Intel style hexadecimal number
#
define(`toIntel', `ifelse(regexp(`$1', `^[0-9]$'), `0', `$1', ifelse(regexp(format(`%X', `$1'), `^[A-F]'), `-1', format(`%Xh', `$1'), format(`0%Xh', `$1')))')

# Convert an Intel style hexadecimal number to a base 10 number
#
define(`fromIntel', `ifelse(regexp(`$1', `h$'), `-1', `$1', format(`%d', eval(`0x'patsubst(`$1', `h$', `'))))')

# HI_BYTE and LO_BYTE macros
# Galactic uses the high and low bytes of messages throughout the code.
# These macros substiture the high byte and low byte of the message word.
#
define(`HI_BYTE',	`toIntel(eval(fromIntel($1) >> 8))')
define(`LO_BYTE',	`toIntel(eval(fromIntel($1) & 0xff))')

# Expand to db list
#
define(`wordToBytes',	`ifelse(`$1', `0', `0, 0', `HI_BYTE($1), LO_BYTE($1)')')

# BITMASK(flag, ...)
#   ORs all arguments into one number. Intel style hex numbers are converted
# to base 10 numbers. The end result is converted back to an Intel style hex
# string
#
define(`BITMASK', `toIntel(_bitmask(`0', $@))')dnl
define(`_bitmask', `ifelse(`$#', `1', fromIntel($1), `ifelse(`$2', `', `$0($1)', `$0(`eval($1 | fromIntel($2))', shift(shift($@)))')')')

