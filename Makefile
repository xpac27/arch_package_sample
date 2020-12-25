TARGET = simple-program

all: ${TARGET}

${TARGET}: main.c
	clang ${CFLAGS} ${LDFLAGS} -DUNIX -o ${TARGET} main.c

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ${TARGET} ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/${TARGET}

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${TARGET}

.PHONY: all install uninstall
