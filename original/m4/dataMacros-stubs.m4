divert(`-1')dnl

# Object macro
#
define(`OBJECT', `$1			.TAG	object_t
$1:			ds 6')

# Hireable macro
#
#
define(`HIREABLE', `ifelse(`$1', `g_crew_none', `				ds 3', `$1			.TAG hireable_t
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

divert`'dnl
