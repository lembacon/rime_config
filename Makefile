PREFIX ?= /usr/local
BINS = $(wildcard bin/*)
LIBEXECS = $(wildcard libexec/*)

install:
	install -d -m 0755 $(DESTDIR)$(PREFIX)/bin
	install -m 0755 $(BINS) $(DESTDIR)$(PREFIX)/bin
	install -d -m 0755 $(DESTDIR)$(PREFIX)/libexec
	install -m 0755 $(LIBEXECS) $(DESTDIR)$(PREFIX)/libexec

uninstall:
	rm -f $(foreach BIN, $(BINS), $(DESTDIR)$(PREFIX)/$(BIN))
	rm -f $(foreach LIBEXEC, $(LIBEXECS), $(DESTDIR)$(PREFIX)/$(LIBEXEC))

