This archive conatins a first beta release of ST-Oberon V4, an
implementation of the ETH Oberon System V4 for Atari ST & TT
computers.

The system is supplied with an Oberon(-1) compiler, a linker and
comes with complete source code.

ST-Oberon has been tested on TOS 1.0 and 1.4 on a 1040STF, a MEGA ST2
and a Stacy. It may be that the current version of Oberon won't run
on the newer TOS versions, since it uses some system variables, and
modifies the exeption vectors.

Hardware Requirements:

Atari ST or TT computer with at least

2 MB RAM (for serious use, altough ST-Oberon will also run with
 only 1 MB)

4 MB of harddisk space, preferably on a harddisk connected to the
 ACSI port.

The following files are contained in this distribution:

SYSTEM.LZH  the main archive containing

  - KERNEL.PRG	the Oberon System loader.
  - $$OBDISK.IMG	the data file containing the virtual Oberon
      harddisk partiton.
  - PCMOUSE.PRG  a tool to connect a Microsoft or Mouse Systems
      compatible serial mouse to your Atari.
  - PCMOUSE.S  the assembler source code of the above tool.
  - README.TXT  this text.

PR3FONTS.ARC  an Oberon compressed archive containg the *.Pr3.Fnt
  fonts needed by the postscript printer.

SOURCE.ARC  an Oberon compressed archive containing the sources of
  the system.

To start Oberon, unpack SYSTEM.LZH and execute KERNEL.PRG.

have fun!

please send bug reports or feedback to eglis@ubaclu.unibas.ch
under the subject "stoberon".
