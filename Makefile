CC     = gcc
CFLAGS = -std=c99 -pedantic -Wall -g
 
main: *.c
	$(CC) $(CFLAGS) $^ -o $@

debug: main
	cat tests/1.in | valgrind -s --leak-check=full ./main

test: main
	sh tests.sh

clean:
	rm -f pref infix diff
