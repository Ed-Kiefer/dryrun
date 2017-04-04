CC=gcc
CFLAGS=
OBJ = dry.o

dry: $(OBJ)
	$(CC) -o $@  $<

%o.*: %.c
	$(CC)  $(CFLAGS) -c $@ -o $(output)  

test:
	./dry

.PHONY: clean

clean:
	rm -f *.o dry

