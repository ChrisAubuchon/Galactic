#ifndef _DATA_H
#define _DATA_H

/*
 * Automatically generated by m4/data-h.m4
 */

pushdef(`define', `format(`#define %-20s %d', translit(`$1', `a-z', `A-Z'), $2)')dnl
include(`locations.m4')dnl
popdef(`define')

extern char	*locations[];
extern char	*items[];
extern char	*earthRooms[];
extern char	*isthurRooms[];
extern char	*gcsRooms[];
extern char	*navierRooms[];
extern char	*solomawRooms[];

#endif