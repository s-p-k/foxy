FXBIN = foxy
FXSRC = foxy

FMBIN = fmarks
FMBIN = fmarks

PREFIX = /usr/local/bin
MANPREFIX = /usr/local/man/man1


install:
# install foxy
	@echo installing ${FXBIN} in ${PREFIX}
	@mkdir -p ${PREFIX}
	@chmod +x ${FXBIN}
	@cp -f ${FXBIN} ${PREFIX}/
	@echo installing foxy man page to ${MANPREFIX}
	@mkdir -p ${MANPREFIX}
	@cp -f foxy.1 ${MANPREFIX}/foxy.1
	@chmod 644 ${MANPREFIX}/foxy.1

# install fmarks
	@echo installing ${FMBIN} in ${PREFIX}
	@mkdir -p ${PREFIX}
	@chmod +x ${FMBIN}
	@cp -f ${FMBIN} ${PREFIX}/


uninstall:

# uninstall foxy
	@echo removing ${FXBIN} from ${PREFIX}
	@rm -f ${PREFIX}/${FXBIN}
	@echo removing ${FXBIN} man page from ${MANPREFIX}
	@rm -f ${MANPREFIX}/foxy.1

# uninstall fmarks
	@echo removing ${FMBIN} from ${PREFIX}
	@rm -f ${PREFIX}/${FMBIN}

.PHONY: install uninstall
