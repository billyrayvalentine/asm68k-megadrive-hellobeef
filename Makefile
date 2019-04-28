AS	= /usr/bin/m68k-suse-linux-as
LD	= /usr/bin/m68k-suse-linux-ld

ASFLAGS = -m68000 --register-prefix-optional 
LDFLAGS = -O1 -static -nostdlib  

OBJS=main.o 

ROM = main
BIN	= $(ROM).bin

all:	$(BIN)

clean:
	rm -f $(BIN) && rm -f *.out && rm -f *.map && rm -f $(shell find . -name '*.o') 

$(BIN): $(OBJS)
	$(LD) $(LDFLAGS) $< --oformat binary -o $@

%.o: %.asm 
	$(AS) $(ASFLAGS) $< -o $@

run: all
	$(DEBUGGER) $(BIN) 
