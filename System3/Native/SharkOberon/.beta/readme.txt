SharkOberon

oberon               SharkOberon boot file
SharkOberon.zip      SharkOberon sources and support files
system991119.ncfs    SharkOberon NCFS disk image
NCFSServer.zip       NCFS file server for Solaris/Linux

These files for SharkOberon where combined from those of Andreas Signer, 
Bernhard Egger and Pieter Muller.

It should be possible to build a new release from these, but it will require
some work.  The best place to start is ARM.Make.Tool in SharkOberon.zip .

To boot SharkOberon, you need an NC configured to boot the Oberon boot file
via TFTP and a NCFS server running on Unix to serve the system991119.ncfs file.
