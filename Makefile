CC := gcc
CFLAGS := -m32

all: a.out

foo.o: foo.c
	$(CC) $(CFLAGS) -c -o $@ $^

main.o: main.asm
	nasm -felf32 -o $@ $^

a.out: foo.o main.o
	$(CC) $(CFLAGS) -nostartfiles -o $@ $^

clean:
	rm -f foo.o main.o a.out
