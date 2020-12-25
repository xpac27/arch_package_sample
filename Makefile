TARGET = simple-program

all: ${TARGET}

${TARGET}: main.c
	clang main.c -o ${TARGET}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ${TARGET} ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/${TARGET}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${TARGET}

.PHONY: all install uninstall
