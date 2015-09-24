CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O3 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects	= example3_2.o

default: example3_2

.PHONY: default clean

example3_2: $(objects)
	$(CC) -o $@ $^

example3_2.o: example3_2.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) example3_2

qemu: example3_2
	qemu-arm -L /usr/arm-linux-gnueabihf ./example3_2
