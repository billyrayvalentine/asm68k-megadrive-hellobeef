AS	= /usr/bin/m68k-suse-linux-as
LD	= /usr/bin/m68k-suse-linux-ld
ASFLAGS = -m68000 --register-prefix-optional 
LDFLAGS = -O1 -static -nostdlib  

OBJS=hellobeef.o 

ROM = hellobeef
BIN	= $(ROM).bin

all:	$(BIN)

clean:
	rm *.{o,bin}

$(BIN): $(OBJS)
	$(LD) $(LDFLAGS) $< --oformat binary -o $@

%.o: %.asm 
	$(AS) $(ASFLAGS) $< -o $@
