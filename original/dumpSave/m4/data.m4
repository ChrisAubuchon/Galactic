#include <stdio.h>

pushdef(`define', `	"$1",')dnl
char	*locations[] = {
include(`locations.m4')dnl
	""
};

char	*earthRooms[] = {
include(`earthRoomNames.m4')dnl
	""
};

char	*isthurRooms[] = {
include(`isthurRoomNames.m4')dnl
	""
};

char	*gcsRooms[] = {
include(`gcsRoomNames.m4')dnl
	""
};

char	*navierRooms[] = {
include(`navierRoomNames.m4')dnl
	""
};

char	*solomawRooms[] = {
include(`solomawRoomNames.m4')dnl
	""
};
popdef(`define')dnl

define(`OBJECT', `	"$1",')dnl
char	*items[] = {
include(`items.m4')dnl
	""
};
define(`OBJECT', `')dnl
