# Makefile for FastWM
# cr4at4d by MLevankov

CC = gcc
CFLAGS = -std=c99
LDFLAGS = -lX11
FASTWM = main.c
OUTPUT = fastwm
BIN = /usr/local/bin

all: fastwm

fastwm:
	${CC} ${CFLAGS} ${LDFLAGS} ${FASTWM} -o ${OUTPUT}

install: fastwm
	chmod +x ${OUTPUT}
	cp ${OUTPUT} ${BIN}

uninstall:
	rm ${BIN}/${OUTPUT}

clean:
	rm ${OUTPUT}
