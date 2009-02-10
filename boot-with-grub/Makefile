CFLAGS = -fno-builtin -nostdlib -mno-red-zone -ffreestanding -nostdinc -fno-stack-protector
DISKPATH = /change/here

all:
	as entry.s -o entry.o
	gcc $(CFLAGS) -c main.c -o main.o
	ld -Tld.script entry.o main.o -o entry.elf

run:
	qemu -hda $(DISKPATH) -snapshot

clean:
	rm *.o *.bin
