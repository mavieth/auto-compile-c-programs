all: program

program: program.o
	gcc -o program program.o 

program.o: program.c
	gcc -c program.c

clean:
	rm program *.o