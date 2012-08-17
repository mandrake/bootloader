.PHONY: qemu-run clean

clean:
	rm asm/*.o
	rm bin/*

qemu-run:
	$(MAKE) clean
	nasm asm/mbc.asm -o asm/mbc.o
	nasm asm/mbr.asm -o asm/mbr.o
	nasm asm/sector0.asm -o asm/sector0.o
	dd conv=notrunc if=asm/mbc.o of=bin/disk.img
	dd conv=notrunc oflag=append if=asm/mbr.o of=bin/disk.img
	dd conv=notrunc oflag=append if=asm/sector0.o of=bin/disk.img
	qemu -hda bin/disk.img

vbox-run:
	echo "Not available yet"
