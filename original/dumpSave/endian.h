#ifndef _ENDIAN_H
#define _ENDIAN_H

#include <stdio.h>
#include <stdint.h>
#include <sys/param.h>
#include <architecture/byte_order.h>

#if BYTE_ORDER == BIG_ENDIAN

#define cnv16be(x) (x)
#define cnv16le(x) ((((x)&0x00ff) << 8) | (((x)&0xff00) >> 8))
#define cnv32be(x) (x)
#define cnv32le(x) (((x) << 24) | (((x) & 0xff00) << 8) | (((x) & 0xff0000) >> 8) | (x) >> 24)

#else

#define cnv16be(x) (((x) << 8) | ((x) >> 8))
#define cnv16le(x) (x)
#define cnv32be(x) (((x) << 24) | (((x) & 0xff00) << 8) | (((x) & 0xff0000) >> 8) | (x) >> 24)
#define cnv32le(x) (x)

#endif

uint16_t str_read16be(char *);
uint16_t str_read16le(char *);
uint32_t str_read32be(char *);
uint32_t str_read32le(char *);

#endif
