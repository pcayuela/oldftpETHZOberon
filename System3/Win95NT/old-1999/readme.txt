Oberon System 3 for Windows 95 / 98 / NT

Oberon is both the name of a programming language and operating system 
developed at ETH Zürich. This particular distribution contains an 
implementation of Oberon System 3 release 2.3 for Windows 95/98 and Windows 
NT. It is compiled from ETH sources and is cardware. This means that using 
the system requires you to send me a nice postcard for my collection:

    Emil Zeller
    Institut für Computersysteme
    ETH-Zentrum
    CH-8092 Zürich
    Switzerland

    e-mail: zeller@inf.ethz.ch


SYSTEM REQUIREMENTS

Hardware:
  - 20 MB of hard disk space.
  - Preferably a screen with a resolution of 1024 by 768 pixels with at 
    least 256 colors (although smaller size screens will work too).
  - Preferably a three-button mouse and a mouse driver that supports all 
    three mouse buttons. A 2-button mouse may be used instead but with less 
    comfort (see below).

Software:
    - Microsoft Windows 95 / 98 / NT


INSTALLATION OF OBERON

    Oberon is delivered as a number of self-extracting EXE files.

    System1.exe  - Oberon and Gadgets system files, tools, libraries,
                   panels etc.
    System2.exe  - Oberon and Gadgets object files
    Docu.exe     - Documentation and books
    Apps1.exe    - Collection of Oberon applications
    Apps2.exe    - Collection of Oberon applications
    Leonardo.exe - Tool for drawing illustrations
    Network.exe  - Internet applications
    WinApps.exe  - Windows specific Oberon applications
    Src.exe      - System source code
    PrFnt.exe    - 600 and 200 dpi printer fonts

    Fonts.exe    - Windows display fonts (*.FON)
    Debug.exe    - A Windows debugging  tool

    System1 and System2 are the minimum parts of the Oberon system. It is 
    however strongly recommended to unpack all archives.

Installation step-by-step

1.  Create a new directory, e.g. C:\Oberon. This newly created directory 
    will be called "Oberon directory" for the rest of this document.

2.  Extract all (except Fonts.exe and Debug.exe) the files to the Oberon 
    directory, by executing the .exe files.

3.  Merge the settings in oberon.reg with your windows registry by selecting 
    the "Merge" entry in the context menu of the oberon.reg icon.

4.  Optional: For faster text output extract the fonts in Fonts.exe to your 
    windows fonts directory (c:\Windows\Fonts or c:\WinNT\Fonts).

5.  Optional: Install the printer fonts required by your default printer. 
    The 300 dpi fonts are preinstalled, the 200 and 600 dpi fonts can be 
    installed as explained in the Printers.Tool. Print a test page.

6.  Optional: Install the Windows debugging tool.

Note: Release 2.3 no longer uses an ini file to store settings, the windows 
registry is used instead. Thus,  if you want to use a shared Oberon 
installation with different users, each user needs to install oberon.reg.


RE-INSTALLATION OF OBERON

If you re-install Oberon or upgrade your Oberon version, you run the risk of 
overwriting the files of your current configuration, which you might have 
adjusted to your personal preferences. You can make a backup of the 
"critical" files with the following Oberon commands in the old version 
before installing Oberon.

System.CreateDirectory /BackupDir/ ~
Compress.Add /BackupDir/Backup.Arc
	EditKeys.Text TextPopups.Text Configuration.Text Projects.Tool
	Access.Ring Public.Ring Private.Ring
	MailMessages *.UIDLs ~

To backup settings in the windows registry use regedit to backup
(Export Registry File, Selected branch) old entries:
	[HKEY_CURRENT_USER\Software\Oberon System 3\Release 2.x]


STARTING OBERON

a) From the desktop

Drop the OBERON.EXE file on your desktop to create a shortcut. Double-click 
the Oberon icon to start Oberon. To start Oberon in a maximized window set 
the option "Run" in the shortcut's properties page to "Maximized".

b) From the command line

On the command line, type OBERON.EXE. Note: oberon does no longer support 
command line options. The heap size is automatically increased when oberon 
runs out of memory.


QUITTING OBERON

The command System.Quit terminates the Oberon application. This is the 
normal way to exit Oberon. Alternatively, the application can be terminated 
by choosing "Close" in the application window's system menu or by using the 
keyboard accelerator Alt-F4.


SUPPORT FOR TWO-BUTTON MOUSE

Oberon makes use of three mouse buttons. On systems with a two- button 
mouse, the middle mouse button is emulated by the Ctrl key on the keyboard. 
Pressing the control key is equivalent to pressing the middle mouse button.


COPYRIGHTS

Oberon and Oberon System 3 for Windows are trademarks of Eidgenössische 
Technische Hochschule, Zürich
Microsoft, MS and MS-DOS are registered trademarks of Microsoft Corporation.
NT, Win32, Win32s, Windows, Windows 95, Windows 98 and Windows NT are 
trademarks of Microsoft Corporation.
Intel is a registered trademark, i486 and Pentium are trademarks of Intel 
Corporation.
