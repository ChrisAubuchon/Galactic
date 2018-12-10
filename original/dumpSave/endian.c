/*
 * endian.c - Endian operations
 */
#include <stdio.h>
#include <stdint.h>

#include "endian.h"

/*
 * str_read16be and read16le
 * Read two byte values in big-endian and little-endian from
 * a string
 */
uint16_t str_read16be(char *buf)
{
	uint16_t v = *((uint16_t *)buf);

	return cnv16be(v);
}

uint16_t str_read16le(char *buf)
{
	uint16_t v = *((uint16_t *)buf);

	return cnv16le(v);
}

/*
 * str_read32be and str_read32le
 * Read four-byte values in big-endian and little-endian from
 * a string
 */
uint32_t str_read32be(char *buf)
{
	uint32_t v = *((uint32_t *)buf);

	return cnv32be(v);
}

uint32_t str_read32le(char *buf)
{
	uint32_t v = *((uint32_t *)buf);

	return cnv32le(v);
}
