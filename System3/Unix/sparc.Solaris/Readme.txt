This is the ETH Oberon System release 2.4 for Solaris SPARC.


Installation:
-------------

1.      Create a home directory for the Oberon System at an
        arbitrary place (eg. /home/oberon). This directory may
        reside on a file server and can be shared by many users.
        The users get anly read permissions to the files in this
        directory!
        
        as root:
           mkdir /home/oberon

2.      Unpack the System

        as root:
           ./inst.oberon  sparc_Solaris_Oberon_r24_Sys.tgz /home/oberon /usr/local/bin/oberon

           (The 3. parameter is the name of the oberon start script to be installed)

3.      Create a directory in which you want to work with Oberon 
        (at an arbitrary place outside the Oberon directory). Change 
        into that directory and start Oberon

        as normal user:
           mkdir workdir
           cd workdir
           oberon

enjoy!


report any problems to:   
        
                fld@informatik.uni-bremen.de


System Sources:
---------------

  The Linux PPC, MacOS X, Linux x86, Solaris x86 and Solaris SPARC ports of 
Oberon share the same sources. The archive is named Unix_Oberon_r24_Src.tgz. 
Unpacking the archive creates the following files and directories:

        
        NO                              sources from Native Oberon
        Unix                            Unix specific sources
        ppc                             PowerPC specific sources
        ppc/Linux                       PowerPC Linux sources
        ppc/Linux/startup               C boot code
        ppc/Darwin                      PowerPC MacOS X sources
        ppc/Darwin/startup              C boot code
        x86                             i386 specific sources
        x86/Unix                        i386 Unix specific sources
        x86/Linux                       i386 Linux specific sources     
        x86/Solaris                     i386 Solaris specific sources
        sparc                           SPARC specific sources
        sparc/Solaris                   SPARC Solaris specific sources

       
For easy modification or creation of new systems from scratch the tool

        UnixOberon.Tool

is included. To work with the sources, unpack them at an arbitrary place
_autside_ the Oberon installation directory, change into the directory 'src',
start Oberon and open the UnixOberon.Tool. After succsessfull testing the new
system you can copy the new object files into the Oberon installation
directory.

 
