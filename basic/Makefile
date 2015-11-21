CC = gcc
CWD = $(shell pwd)
OBJLIBS = libhello.so libbye.so
LIBS = -L$(CWD) -lhello -lbye
EXE = say

all: $(EXE)

hello.o: hello.c
	$(CC) -c -Wall -Werror -fpic $(^)

bye.o: bye.c
	$(CC) -c -Wall -Werror -fpic $(^)

libhello.so: hello.o
	$(CC) -shared -o $(@) $(^)

libbye.so: bye.o
	$(CC) -shared -o $(@) $(^)

$(EXE): main.c libhello.so libbye.so
	$(CC) -L$(CWD) -Wall -o $@ main.c -lhello -lbye


clean:
	@rm -rf *.o *.so say
	@echo "Cleanup Done"
