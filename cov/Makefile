CC = gcc
CWD = $(shell pwd)
OBJLIBS = libhello.so libbye.so
LIBS = -L$(CWD) -lhello -lbye
EXE = say

COVERAGE_DIR := coverage
TARGET :=

ifeq ($(TARGET), coverage)
	FLAGS := -coverage
else
	FLAGS :=
endif

all: $(EXE)

hello.o: hello.c
	$(CC) -c -Wall -Werror -fpic $(^) $(FLAGS)

bye.o: bye.c
	$(CC) -c -Wall -Werror -fpic $(^) $(FLAGS)

libhello.so: hello.o
	$(CC) -shared -o $(@) $(^) $(FLAGS)

libbye.so: bye.o
	$(CC) -shared -o $(@) $(^) $(FLAGS)

$(EXE): main.c libhello.so libbye.so
	$(CC) -L$(CWD) -Wall -o $(@) main.c -lhello -lbye $(FLAGS)

coverage:
	$(MAKE) clean
	$(MAKE) TARGET=coverage

.PHONY: coverage


clean:
	@/bin/rm -rf *.o *.so say *.gcda *.gcno coverage.info coverage
	@echo "Cleanup Done"
