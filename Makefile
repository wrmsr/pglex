all: scan.o

scan.o:
	flex -o scan.c scan.l
	gcc -shared scan.c
