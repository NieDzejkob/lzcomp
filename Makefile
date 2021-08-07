ifeq ($(strip $(shell echo $$CC)),)
CC := gcc
endif

all: src/*.c src/*.h
	$(CC) -std=c17 -O3 -flto src/*.c -o lzcomp

clean:
	rm -f lzcomp

debug: src/*.c src/*.h
	$(CC) -std=c17 -ggdb -Wall -Wextra -pedantic src/*.c -o lzcomp
