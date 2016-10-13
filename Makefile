all: scan.o

scan.o:
	flex -o scan.c scan.l
	bison -d -y -o gram.c gram.y
	gcc -o scan.o -c scan.c
	gcc -o gram.o -c gram.c
