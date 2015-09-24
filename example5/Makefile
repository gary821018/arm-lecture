CC	= arm-linux-gnueabihf-gcc

CFLAGS	= -O0 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example5_3.o

default: example5_3

.PHONY: default clean

example5_3: $(objects)
	$(CC) -o $@ $^

example5_3.o: example5_3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example5_3

qemu: example5_3
	qemu-arm -L /usr/arm-linux-gnueabihf ./example5_3
