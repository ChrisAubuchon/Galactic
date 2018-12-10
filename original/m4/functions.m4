divert(`-1')dnl
ifdef(`galactic_m4lib', `', `include(`m4/lib.m4')')

# Expand to printFromMSGFile call
#
define(`printMessage', `ld	d, toIntel(eval(fromIntel($1) >> 8))
		ld	e, toIntel(eval(fromIntel($1) & 0xff))
		call	printFromMSGFile')

dnl ----------------------------------------------
dnl
dnl Score macros
dnl
dnl ----------------------------------------------

# increaseScore(amount)
# decreaseScore(amount)
#
define(`increaseScore', `ld	a, fromIntel($1)
		ld	hl, (g_currentScore)
		call	addByteToHL
		ld	(g_currentScore), hl')
define(`decreaseScore', `ld	b, $1
		call	subtractFromScore')

dnl ----------------------------------------------
dnl
dnl Variable macros
dnl
dnl ----------------------------------------------

define(`loadVariable', `ld	a, ($1)')
define(`setVariable',	`ld	a, $2
		ld	($1), a')
define(`addToVariable',	`ld	a, ($1)
		add	a, $2
		ld	($1), a')

define(`ifVariableEq', `loadVariable($1)
		jumpEq($2, $3)')

define(`ifVariableNe', `loadVariable($1)
		jumpNe($2, $3)')

dnl ----------------------------------------------
dnl
dnl Item macros
dnl
dnl ----------------------------------------------

# Generic field macros
#
# loadItemField(item, field)
# setItemField(item, field, value)
#
define(`loadItemField', `ld	a, ($1.$2)')
define(`setItemField', `ld	a, $3
		ld	($1.$2), a')

# Load item field helpers
#
# loadItemRoomNumber(item)
# loadItemLocation(item)
#
define(`loadItemLocation', `loadItemField($1, location)')
define(`loadItemFloorMessage', `loadItemField($1, floorMessageIndex)')
define(`loadItemInvenMessage', `loadItemField($1, invenMessageIndex)')
define(`loadItemRoomNumber', `loadItemField($1, roomNumber)')

# Set item field helpers
#
# setItemLocation(item, location)
# setItemFloorMessage(item, message)
#
define(`setItemLocation', `setItemField($1, location, $2)')
define(`setItemFloorMessage', `setItemField($1, floorMessageIndex, $2)')
define(`setItemInvenMessage', `setItemField($1, invenMessageIndex, $2)')
define(`setItemRoom', `setItemField($1, roomNumber, $2)')
define(`setItemScoreBonus', `setItemField($1, scoreBonus, $2)')


# Item tests
#
# ifItemInLocation(item, location, destination)
# ifItemNotInLocation(item, location, destination)
# ifItemInRoom(item, room, destination)
# ifItemNotInRoom(item, room, destination)
# ifItemInInventory(item, destination)
# ifItemNotInInventory(item, destination)
# ifItemWithPlayer(item, destination)
# ifItemNotWithPlayer(item, destination)
# ifItemInvenMessageEq(item, index, destination)
# ifItemInvenMessageNe(item, index, destination)
# ifItemFloorMessageEq(item, index, destination)
# ifItemFloorMessageNe(item, index, destination)
#
#
define(`ifItemInLocation', `loadItemLocation($1)
		jumpEq($2, $3)')
define(`ifItemNotInLocation', `loadItemLocation($1)
		jumpNe($2, $3)')
define(`ifItemInRoom', `loadItemRoomNumber($1)
		jumpEq($2, $3)')
define(`ifItemNotInRoom', `loadItemRoomNumber($1)
		jumpNe($2, $3)')
define(`ifItemInInventory', `ifItemInLocation($1, location_inventory, $2)')
define(`ifItemNotInInventory', `ifItemNotInLocation($1, location_inventory, $2)')
define(`ifItemWithPlayer', `ifItemInLocation($1, location_withPlayer, $2)')
define(`ifItemNotWithPlayer', `ifItemNotInLocation($1, location_withPlayer, $2)')
define(`ifItemInvenMessageEq', `loadItemInvenMessage($1)
		jumpEq($2, $3)')
define(`ifItemInvenMessageNe', `loadItemInvenMessage($1)
		jumpNe($2, $3)')
define(`ifItemFloorMessageEq', `loadItemFloorMessage($1)
		jumpEq($2, $3)')
define(`ifItemFloorMessageNe', `loadItemFloorMessage($1)
		jumpNe($2, $3)')

dnl ----------------------------------------------
dnl
dnl Current room macros
dnl
dnl ----------------------------------------------

define(`loadCurrentRoom', `ld	a, (g_currentRoomNumber)')
define(`setCurrentRoom', `ld	a, $1
		ld	(g_currentRoomNumber), a')

# Current room test macros
#
# ifCurrentRoomEq(room, destination)
# ifCurrentRoomNe(room destination)
#
define(`ifCurrentRoomEq', `loadCurrentRoom()
		jumpEq($1, $2)')
define(`ifCurrentRoomNe', `loadCurrentRoom()
		jumpNe($1, $2)')

dnl ----------------------------------------------
dnl
dnl Current planet macros
dnl
dnl ----------------------------------------------

# loadCurrentPlanet
#
define(`loadCurrentPlanet', `ld	a, (g_currentPlanetNumber)')
define(`setCurrentPlanet', `ld	a, $1
		ld (g_currentPlanetNumber), a')

# Current planet test macros
#
# ifCurrentPlanetEq(planet, destination)
# ifCurrentPlanetNe(planet destination)
#
define(`ifCurrentPlanetEq', `loadCurrentPlanet()
		jumpEq($1, $2)')
define(`ifCurrentPlanetNe', `loadCurrentPlanet()
		jumpNe($1, $2)')

dnl ----------------------------------------------
dnl
dnl Generic jump macros
dnl
dnl ----------------------------------------------

# jumpEq(condition, destination)
# jumpNe(condition, destination)
# jumpLt(condition, destination)
# jumpGe(condition, destination)
#
define(`jumpEq', `cp	$1
		jp	z, $2')
define(`jumpNe', `cp	$1
		jp	nz, $2')
define(`jumpLt', `cp	$1
		jp	c, $2')
define(`jumpGe', `cp	$1
		jp	nc, $2')

dnl ----------------------------------------------
dnl
dnl Crew macros
dnl
dnl ----------------------------------------------

# Generic crew macros
#
# loadCrewField(crew, field)
# setCrewField(crew, field, value)
#
define(`loadCrewField', `ld	a, ($1.$2)')
define(`setCrewField', `ld	a, $3
		ld	($1.$2), a')

define(`ifCrewIsHired', `loadCrewField($1, hiredFlag)
		jumpEq(isHired, $2)')
define(`ifCrewIsNotHired', `loadCrewField($1, hiredFlag)
		jumpNe(isHired, $2)')

dnl ----------------------------------------------
dnl
dnl 
dnl
dnl ----------------------------------------------

define(`decreaseItemCount', `ld	a, (carriedItemCount)
		sub	$1
		ld	(carriedItemCount), a')

dnl ----------------------------------------------
dnl
dnl Helper data macros
dnl
dnl ----------------------------------------------

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

dnl ----------------------------------------------
dnl
dnl Phony macro functions
dnl
dnl ----------------------------------------------

define(`addCurrentRoomFlag', `')
define(`ifAmbientMessageNe', `')
define(`ifFirstMessageNe', `')
define(`ifRoomInDirectionNe', `')
define(`ifVerboseMessageNe', `')
define(`setAmbientMessage', `')
define(`setCurrentRoomFirstMessage', `')
define(`setCurrentRoomScore', `')
define(`setLanding', `')
define(`setRoomInDirection', `')
define(`setVerboseOffset', `')


divert`'dnl
