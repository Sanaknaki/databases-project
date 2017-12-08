GCC=gcc
BIN=prog

SRC=$(wildcard *.c)
OBJ=$(SRC:%.c=%.o)

all: $(SRC)
	$(GCC) -o $(BIN) $^

%.o: %.c
	$(GCC) $@ -c $<

run: all
	./prog

clean:
	rm -f *.o
	rm $(BIN)
