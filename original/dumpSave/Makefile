all: dumpSave

CFLAGS=-g -O2 -I.
GAMEDATA=../../gameData

OBJS=dumpSave.o endian.o data.o

dumpSave: $(OBJS)
	$(CC) $(CFLAGS) $(CPPFALGS) $^ -o $@

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

data.o: data.h data.c 
endian.o: endian.c endian.h
dumpSave.o: dumpSave.c data.h

data.c: m4/data.m4 data.h
	m4 -I../m4 -I$(GAMEDATA) $< > data.c

data.h: m4/data-h.m4
	m4 -d -I../m4 -I$(GAMEDATA) $< > data.h

clean:
	-rm dumpSave data.c data.h *.o


.PHONY: data.h
