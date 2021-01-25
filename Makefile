.POSIX:
CC	= cc
CFLAGS	= -Wall -pedantic
LDLIBS	= $(shell pkg-config --libs ncurses panel)
PREFIX	= /usr/local

cbonsai: cbonsai.c

install: cbonsai
	install -TDm 0755 cbonsai $(DESTDIR)$(PREFIX)/bin/cbonsai

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/cbonsai

clean:
	rm -f cbonsai

.PHONY: install uninstall clean
