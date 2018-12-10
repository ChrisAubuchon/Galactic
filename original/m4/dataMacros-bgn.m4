divert(`-1')dnl
ifdef(`galactic_m4lib', `', `include(`m4/lib.m4')')dnl

# Object macro
# $1: Variable name
# $2: scoreBonus
# $3: field_1 (unknown and unused field)
# $4: floorMessageIndex
# $5: invenMessageIndex
# $6: location
# $7: roomNumber
#
define(`OBJECT', `$1		.TAG	object_t
$1:		db $2, $3, $4, $5, $6, $7')

# Hireable macro
#
# $1: Variable name
# $2: isHired flag
# $3: Message word
#
define(`HIREABLE', `ifelse(`$1', `g_crew_none', `			db $2
			dw $3', `$1		.TAG	hireable_t
$1:		db $2
			dw $3')')dnl

# Landing macro
#
#
define(`LANDABLE', `$1		.TAG	landable_t
$1:		db $2
		dw $3')

# Room macro
#
# First field is the room name and is not used in the code.
#
define(`ROOM', `; $1
			db $2					; scoreBonus
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

divert`'dnl
