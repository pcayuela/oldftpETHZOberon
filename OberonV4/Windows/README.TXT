                   Oberon for Windows(tm)

                      Version 4.0-1.41

         (c) 1993-95 by Institut für Computersysteme
                        ETH Zürich





INTRODUCTION

Oberon for Windows is an implementation of Oberon for Microsoft Windows NT
and Microsoft Windows 3.1. This is release 1.41 of the ETH Oberon System
Version 4.0. When running under Microsoft Windows 3.1, the operating system
extension Win32s is required. Microsoft's Win32s is an operating system
extension to Windows 3.1 that allows Windows 3.1 to run programs written for 
Windows NT. It basically translates 32-bit calls to the Windows NT API into 
calls to the 16-bit Windows 3.1 API.


SYSTEM REQUIREMENTS

Hardware:
- An IBM Computer or Compatible running Microsoft Windows NT or Microsoft
  Windows 3.1 in enhanced mode.
- A 386, 486 or Pentium processor.
- 4MB of extended memory (absolute minimum).
- 4 MB of hard disk space.
- Preferably a screen with a resolution of 1024 by 768 pixels.
- Preferably a three button mouse (and a mouse driver that supports all 
  three mouse buttons).

Software:
- Microsoft Windows NT or Microsoft Windows 3.1
- If running under Microsoft Windows 3.1, the operating system extension 
  Win32s is required.



CONTENTS OF THIS DIRECTORY

- OBERON.ZIP     compressed Oberon application
- README.TXT     this file
- WIN32S.EXE     compressed archive with Win32s V1.1



DOWNLOAD

Download the file OBERON.ZIP in *BINARY* mode to a local directory.
If you intend to run Oberon under Windows 3.1 and you do not have Win32s,
you neeed to download the file WIN32S.EXE in *BINARY* mode into an empty
local directory.



INSTALLATION

1. If you intend to run Oberon under Windows 3.1 and have Win32s not
   installed on your system, install Win32s first (see instructions below).

2. Unzip the file OBERON.ZIP. Optionally, copy the files to a floppy disk.

3. Start Windows.

4. In the File Manager Window, display the file INSTALL.EXE (on the floppy
   or in the directory where the unzipped files are) and then double-click
   on it to run the installation program.

5. Follow the instructions of the installation program.

NOTE for Windows 3.1 users:
If you use SHARE, set the command line parameters to the following values:

	SHARE /F:16348 /L:255

SHARE is normally called from the AUTOEXEC.BAT file. If any troubles occur
with share, increase the value of the /F option. If this does not help, 
remove SHARE from AUTOEXEC.BAT. If you changed command line parameters 
for SHARE, you must reboot the machine.




INSTALLATION OF WIN32S

Win32s is only needed if you intend to run Oberon under Windows 3.1. If 
you do not have Win32s Version 1.1 or a newer version, you need to install it.

1. In the directory where you downloaded WIN32S.EXE, start the self-extracting
   archive by executing WIN32S.EXE from the command line. Then, delete the
   archive file WIN32S.EXE and copy the extracted files to a high density disk.

2. Start Windows.

3. In the File Manager Window, display the files on the Win32s floppy, then 
   double-click on SETUP.EXE to run the Setup program.

4. Follow the setup instructions to complete the installation.

5. Verifying Win32s installation: In addition to installing the Win32s system 
   components, the Win32s Setup program optionally installs the Win32 card 
   game FreeCell, the same program that ships as part of Windows NT. After
   installing Win32s, you can run FreeCell to verify that Win32s installed
   correctly. FreeCell is located in the Program Manager group "Win32 Applications",
   which the Win32s Setup program creates.



STARTING OBERON

a) From the command line (Windows NT only)
On the command line, type OBERON. The command line options are:

   OBERON [-h <HeapSizeInMB>]

For further command line options, see "UserGuide.Text" after starting Oberon.

b) From the program manager (Windows 3.1 and Windows NT)
Under Windows 3.1, the Oberon application must be started from the Program
Manager. The installation program installs a program item in a new program
group Oberon. Double-click the Oberon icon to start Oberon. To change the 
command line options, select the Oberon icon and choose "Properties..." from 
the "File" menu in the program manager.

The default value for the heap size is 4MB. Change this value to 2MB if your 
system has 4MB only. The minium heap size is 2MB. If the heap size is too 
big, system startup under Windows 3.1 may take a while because Windows tries 
to move other memory blocks in order to free a contiguous area of memory.

If your system has 4MB only and in your autoexec.bat file some programs are 
moved to the "high memory area" using the LH command, Oberon might not be able 
to start up with a heap of 2MB. In this case, remove the LH commands from 
your autoexec.bat.



QUITTING OBERON

Oberon can be quit by either choosing Close in the window's system menu, 
by pressing ALT+F4, or by executing the Oberon command System.Quit.



SUPPORT FOR TWO-BUTTON MICE

Oberon makes use of all three mouse buttons. On systems with a two-button 
mouse, the middle mouse button is emulated by the control key on the keyboard. 
Pressing the control key is equivalent to pressing the middle mouse button.



ONLINE DOCUMENTATION

There is more documentation about this release of Oberon for Windows in the 
text "UserGuide.Text."



ACKNOWLEDGEMENTS

The installation program Freeman Installer is freeware software written by 
Ka Iok Tong, Mail Box 20, Wentworth Building, University of Sydney, 
Sydney NSW 2006, Australia. For informations, please contact the author 
at tongk@archsci.arch.su.edu.au. 


COPYRIGHTS

Oberon and Oberon for Windows are trademarks of Eidgenoessische Technische Hochschule, Zurich
Microsoft, MS and MS-DOS are registered trademarks of Microsoft Corporation.
NT, Win32, Win32s, Windows and Windows NT are trademarks of Microsoft Corporation.
IBM is a registered trademark of International Business Machines Corporation.
Intel is a registered trademark, i486 and Pentium are trademarks of Intel Corporation.
