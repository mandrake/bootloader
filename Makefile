.PHONY: run

run:
	qemu-img create disk.img 1M
	nasm mbc.asm -o mbc
	dd conv=notrunc if=mbc of=mbr.img
	dd conv=notrunc if=mbr.img of=disk.img
	qemu -hda ./disk.img

clean:
	rm disk.img mbc
