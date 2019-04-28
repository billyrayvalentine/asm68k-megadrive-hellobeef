# asm68k-megadrive-hellobeef
A simple hello world project to get up and running with megadrive/genesis
development

Most of the introductions I've seen set up the VDP which adds a significant
learning curve to anyone just wanted to dive in and play with some m68k assembly

This demo therefor won't display anything useful, but when combined with a
debugger it does give you a very basic m68k-megadrive development environment

I've used GNU AS (GAS) as a matter of preference for opensource tools

# Installing GNU AS m68k assembler 
Luckily, OpenSuSE has a pre-compiled m68k bintools package which works great
e.g. 

```zypper in cross-m68k-binutils```

This gives you

```
/usr/bin/m68k-suse-linux-addr2line
/usr/bin/m68k-suse-linux-ar
/usr/bin/m68k-suse-linux-as
/usr/bin/m68k-suse-linux-elfedit
/usr/bin/m68k-suse-linux-gprof
/usr/bin/m68k-suse-linux-ld
/usr/bin/m68k-suse-linux-ld.bfd
/usr/bin/m68k-suse-linux-nm
/usr/bin/m68k-suse-linux-objcopy
/usr/bin/m68k-suse-linux-objdump
/usr/bin/m68k-suse-linux-ranlib
/usr/bin/m68k-suse-linux-readelf
/usr/bin/m68k-suse-linux-size
/usr/bin/m68k-suse-linux-strings
/usr/bin/m68k-suse-linux-strip
```
Nice.

# Debugging
I used mame-mess which is in the OpenSuSE OSS repo

Invoke it with:

```mame-mess genesis -cart hellobeef.bin -debug```
