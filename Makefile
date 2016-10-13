.PHONY: all clean
all: program

program: program.o
	$(CC) $(CFLAGS) -o program program.o

%.o: %.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $^

clean:
	rm -f program *.o
