
BINDIR=$(DESTDIR)/usr/bin

all:

build:

install:
	install -D -o root -g root -m 755 bin/svn2dch $(BINDIR)/svn2dch


deb:
	git-buildpackage -rfakeroot -us -uc

test-install:
	rm -fr $(shell pwd)/destdir
	fakeroot $(MAKE) DESTDIR=$(shell pwd)/destdir install
