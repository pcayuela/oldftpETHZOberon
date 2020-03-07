Oberon System 3 for Windows (Win32s)

This particular distribution contains an implementation of
Oberon System 3 release 2.2 for Windows 3.1, Windows 95 and
Windows NT.

For technical correspondence, please contact:
    Swiss Federal Institute of Technology
    Institute for Computer Systems
    The Oberon System 3 Development Team
    ETH Zentrum
    CH-8092 Zurich
    Switzerland

    e-mail: oberon@inf.ethz.ch
    web: http://www.oberon.ethz.ch/system3/
    fax: +41 1 632 1307


SYSTEM REQUIREMENTS

Hardware:
   - 10 MB of hard disk space.
   - Preferably a screen with resolution of 1024 by 768 pixels
     with 256 colors (although smaller size screens will work too).
   - Preferably a three button mouse (and a mouse driver that
     supports all three mouse buttons).

Software:
   - Microsoft Windows 3.1 with Win32s, Windows 95 or Windows NT


32-BIT APPLICATION SUPPORT

Oberon System 3 for Windows is a 32-bit application. If you intend
to run Oberon under Windows 3.1 and if you do not have Win32s
Version 1.3 or a newer version already installed, the operating
system extension Win32s is required and you should install it
first, following the instructions below.

INSTALLATION OF WIN32S

The Microsoft Win32s operating system extension normally comes
as compressed, self-extracting archive WIN32S.EXE.
Some distributions may contain Win32s packed  in a ZIP archive.
This file is typically called WIN32SXX.ZIP, where the XX
indicate the version. You require a version of pkunzip
available from most ftp servers to unpack this file.
Hint: A quirk of the Microsoft installation programs is that
they do not function if you unpack the archive in the same
directory where the archive is located. If you do this, please
delete the archive (WIN32.EXE) before running SETUP.EXE.

1.  Start Windows.

2.  In the File Manager Window, display the unpacked files, then
    double-click on SETUP.EXE to run the Setup program.

3.  Follow the setup instructions to complete the installation.

4.  Verifying Win32s installation: In addition to installing the
    Win32s system components, the Win32s Setup program optionally
    installs the Win32 card game FreeCell, the same program that
    ships as part of Windows NT. After installing Win32s, you can
    run FreeCell to verify that Win32s installed correctly.
    FreeCell is located in the Program Manager group
    "Win32 Applications", which the Win32s Setup program creates.


INSTALLATION OF OBERON

Oberon is delivered as a number of self-extracting EXE files.

    System1.EXE  - Oberon and Gadgets system files, tools,
                   libraries, panels etc.
    System2.EXE  - Oberon and Gadgets object files
    Docu.EXE     - Documentation and books
    Apps.EXE     - Collection of Oberon applications.
    WinApps.EXE  - Windows specific Oberon applications.
    Src.EXE      - System source code.
    PrFnt.EXE    - 600 and 200 dpi printer fonts.
    Leonardo.EXE - Tool for drawing illustrations ...
    Network.EXE  - Internet applications
    JuiceCDK.EXE - Juice Authoring Tool

System1 and System2 are the minimum parts of the Oberon system.

Installation step-by-step (follow these instructions exactly)

1.  Create a new directory, e.g. C:\Oberon. This newly created
    directory will be called "Oberon directory" for the rest of
    this document.

2.  Extract all the files to the Oberon directory, by executing
    the .EXE files.

3.  To start Oberon, execute OBERON.EXE with the Oberon directory
    as working directory. The OBERON.INI file has been configured
    in such way for it to work with the above setup.


USING SHARE

If you use SHARE, set the command line parameters to the
following values:

   SHARE /F:16348 /L:255

(SHARE is normally called from the AUTOEXEC.BAT file.)
If any troubles occur with share, increase the value of the /F
option. If this does not help, remove SHARE from AUTOEXEC.BAT.
If you changed command line parameters for SHARE, you must
reboot the machine.
NOTE: SHARE is not needed under Windows NT.


RE-INSTALLATION OF OBERON

If you re-install Oberon or upgrade your Oberon version, you run
the risk of overwriting the files of your current configuration,
which you might have adjusted to your personal preferences. You can
make a backup of the "critical" files with the following Oberon
command in the old version before installing Oberon.

  DOSBackup.WriteFiles _Oberon.INI EditKeys.Text TextPopups.Text
    Configuration.Text Access.Ring Public.Ring Private.Ring
    MailIn.DB MailOut.DB ~


STARTING OBERON

a) From the command line (Windows NT and Windows 95)

On the command line, type Oberon. For further command line options,
see UserGuide.Text after starting  Oberon.

b) From the Windows workspace (Windows 3.1)

You can create an icon for Oberon using the File Manager under
Windows 3.1. Under Windows 95 and Windows NT you can simply drop
the OBERON.EXE on your desktop to create a shortcut for it.

Double-click the Oberon icon to start Oberon.


QUITTING OBERON

The command System.Quit terminates the Oberon application. This is
the normal way to exit Oberon. Alternatively, the application
can be terminated by choosing "Close" in the application window's
system menu or by using the keyboard accelerator Alt-F4.


SUPPORT FOR TWO-BUTTON MOUSE

Oberon makes use of three mouse buttons. On systems with a two-
button mouse, the middle mouse button is emulated by the control
key on the keyboard. Pressing the control key is equivalent to
pressing the middle mouse button.


COPYRIGHTS

Oberon and Oberon System 3 for Windows are trademarks of
Eidgenössische Technische Hochschule, Zürich
Microsoft, MS and MS-DOS are registered trademarks of Microsoft
Corporation.
NT, Win32, Win32s, Windows, Windows 95 and Windows NT are
trademarks of Microsoft Corporation.
Intel is a registered trademark, i486 and Pentium are trademarks of
Intel Corporation.
