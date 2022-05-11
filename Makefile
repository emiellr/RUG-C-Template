CC     = gcc
CFLAGS = -std=c99 -pedantic -Wall
 
main: *.c
	$(CC) $(CFLAGS) $^ -o $@

debug: main
	cat example_input1.txt | valgrind --leak-check=full ./main

test: main
	sh tests.sh

clean:
	rm -f pref infix diff
