ETH PlugIn Oberon for Windows 9x / ME / NT / 2000

Oberon is both the name of a programming language and operating system 
developed at ETH Zuerich. This particular distribution contains an 
implementation of ETH PlugIn Oberon Release 2.4 for Windows 9x / ME / NT / 
2000.


SYSTEM REQUIREMENTS

Hardware:
  - 20 MB of hard disk space.
  - Preferably a screen with a resolution of 1024 by 768 pixels with at
    least 32768 colors.
  - Preferably a three-button mouse and a mouse driver that supports all 
    three mouse buttons. A 2-button mouse may be used instead but with less 
    comfort.

Software:
  - Microsoft Windows 9x / ME / NT / 2000


INSTALLATION OF OBERON

  Oberon is delivered as a number of self-extracting EXE files.

  System1.exe - Oberon and Gadgets system files, tools, libraries, panels 
  System2.exe - Oberon and Gadgets object files
  Docu.exe    - Documentation and books
  Src.exe     - Source code for all system modules
  Fonts.exe   - Windows display fonts (*.FON)
  PrFnt.exe   - 600 and 200 dpi printer fonts.
  AppsAH.exe  - Application Packages A .. H
  AppsIZ.exe  - Application Packages I .. Z

Installation step-by-step

If you re-install Oberon or upgrade your Oberon version, it is strongly 
recommended to install Oberon in a new directory. Once you have configured 
your new Oberon system you can copy files from the old installation as you 
need them. To remove registry entries of a previous Oberon installation use
the OberonReg.exe utility.

1. Create a new directory, e.g. C:\ETHOberon. This newly created directory 
   will be called "Oberon directory" for the rest of this document.

2. Extract the files System1.exe, System2.exe, Docu.exe and Src.exe to the  
   Oberon directory, by executing the EXE files.

3. Merge the settings in oberon.reg with your windows registry by selecting  
   the "Merge" entry in the context menu of the oberon.reg icon.

4. Drag the Oberon.EXE file from the Oberon directory to your desktop to 
   create a shortcut. Double-click the Oberon icon to start Oberon.

5. In older version of Oberon for Windows you could use the "Ctrl" key to
   simulate a missing middle mouse button. This version features a new
   emulation scheme for your missing middle mouse button. See 
   Distribution.Text for more details.

6. The command System.Quit terminates the Oberon application. The Oberon
   application may also be terminated by closing all windows.

7. For faster text output you may install the Windows versions of the Oberon 
   bitmap fonts. Extract the files in Fonts.exe to a temporary directory and 
   start the "Fonts" control panel application and choose the "File / 
Install 
   New Font" menu entry. A "Add Font" dialog will pop-up, locate the Oberon 
   font files (*.Scn.Fnt) in the temporary directory and start the 
   installation by clicking on "Ok".

8. For further setup steps see: Setup.Tool.


RELEASE NOTES

"Oberon System 3" and "ETH Oberon"

As you may allready have noticed, that we use now the name "ETH Oberon" for
"Oberon System 3".


Mouse

In older version of Oberon for Windows you could use the "Ctrl" key to 
simulate a missing middle mouse button. Since this conflicts with commonly 
used shortcuts (Clipboard, ...), you must use the context menu key (Win95 
keyboard) as middle mouse button replacement. Note: this release does also 
support 2-button mice directly, see: Mouse.Text.

To check how mouse buttons are mapped by your Windows mouse driver use the 
TestMouse.exe utility.


Registry

By default module Registry stores settings under the key:

  HKEY_CURRENT_USER\Software\ETH PlugIn Oberon\Release 2.4

This key is constructed using the version resource entries "FileDescription" 
and "FileVersion" found in oberon.exe (or oberon.dll). You can override the
"FileVersion" part by providing a new version string as command line 
parameter to oberon.exe.
E.g.: oberon.exe -Registry=MyVersion will start an Oberon system which 
reads its settings from:

  HKEY_CURRENT_USER\Software\ETH Oberon\MyVersion

Note: command line parameters passed to oberon.exe are append to the
Oberon.Text in a section called CommandLine. Thus to get the value for a
command line parameter named "Name" use Oberon.OpenScanner(S, 
"CommandLine.Name").


Display

Module Display is now based on a new module Displays. This makes it possible
to use multiple logical displays. Where a display is either an application 
window, control window or an offscreen bitmap. This is the basis for 
technologies like "Oberon Documents on the Windows Desktop", "ActiveX 
controls" or the "Netscape Browser Plugin".


Fonts

The Fonts module has been split into the modules Fonts and WinFonts. By 
default module WinFonts handles both screen (.Scn.Fnt) and printer 
(.Prx.Fnt, .Mdx.Fnt) fonts.

The metric problem with Syntax20b.Scn.Fnt (and other Fonts) has been 
fixed in Win32.FontRes.Mod. The new .fon files can be found in Fonts.exe. 


WinPrinter

Printing of color text using Oberon bitmap fonts still does not work with 
all printer drivers. The problem seems to be, that some drivers do not 
implement all features of GDI32.BitBlt. When using true-type fonts printing 
of color text should work with any driver.

Using the postscript driver provided by Adobe (see: 
http://www.adobe.com/supportservice/custsupport/LIBRARY/pdrvwin.htm)
color text is printed correctly. 

Suggestion: If printing using WinPrinter does not work with your setup use
either the postscript driver provided by Adobe or use a PSPrinter based 
printer driver. If you do not have a postscript printer, I recommend using 
Ghostscript (see: http://www.cs.wisc.edu/~ghost/).


PSPrinter

There are two new variants of the Oberon PSPrinter.

GhostPrinter:
Postscript is printed using your existing Ghostscript installation. For 
installation details see: Printers.Tool.

WinPSPrinter:
The postscript output of PSPrinter is redirected to any Windows (postscript)
printer queue. For installation details see: Printers.Tool.


Timer overflow

The time value returned by Input.Time or Oberon.Time is a signed 32 bit 
value. After 25 days this counter will overflow. If you use Oberon.Task,
Displays.SelectMsg or Oberon.SelectMsg you should use the following work 
arounds:
  Oberon.Task:
  Initialize the time field with Oberon.Time. If you initialize time to 0, 
  the task may not run for the following 25 days!
 
  Oberon.GetSelection, Gadgets.GetSelection:
  time is set to -1 if no selection exists. Thus checking time > 0 does only
  work within the first 25 days!

    Oberon.GetSelection(text, beg, end, time)
    IF time # -1 THEN
    (* selection available *)
    END

  Displays.SelectMsg, Oberon.SelectMsg:
  Initialize the time field to -1 before broadcasting a SelectMsg.


Oberon Documents on the Windows Desktop

In this release Documents and Desktops can be opened in their own window 
using the commands Desktops.OpenWinDoc and Desktops.OpenWin. To use this 
kind of desktop as default, install the package Win included in System1.exe
(see "Configuring the Display Screen" in Setup.Tool).

Note that new windows use the default placeing and sizeing of Windows. Once
you have stored a document, it will remember its position and size on the
Windows desktop. This values are used the next time the document is opened on
the Windows desktop.


Application Packages

All the available application packages are distributed in 3 self-extracting 
EXE files PrFnt.exe, AppsAH.exe and AppsIZ.exe. The packages TUI, GUI, Desk, 
Win, Network and PictConverters are included in System1.exe. The
package Developer is included in Src.exe.

For networked installation of application packages you must first install 
the Oberon Web browser (Packages.Install Network.oaf). A complete list of all
available packages and some browser plugin examples can be found at:

  "http://www.cs.inf.ethz.ch/~zeller/Apps/"


Netscape Browser Plugin

This release includes an alpha version of the Oberon Netscape browser plugin.
(see: PlugInsGuide.Text and NPPlugIn in Packages.Tool).


OLE / ActiveX Server

This release includes an experimental version of an Oberon ActiveX server. 
Thus you may use any Gadget as a visual or none-visual ActiveX component in 
popular ActiveX containers like VisualBasic, Internet Explorer, WordPad ....
To learn more about the OLEObjects package see PlugInsGuide.Text.


Known Problems and Bugs in this Release

- Module Display does not support palette animation
- Window updates are slow
- Print preview does not work with the Netscape browser plugin
- WinPrinter and color text printing using Oberon fonts
- pressing all three mouse buttons on Windows ME does not work


LEGAL INFORMATION

ETH Oberon & ETH PlugIn Oberon
Copyright (C) 1990-2000 Institut fuer Computersysteme ETH Zuerich

Permission to use, copy, modify or distribute this software and its 
documentation for any purpose is hereby granted without fee, provided 
that the above copyright notice appear in all copies and that both 
that copyright notice and this permission notice appear in supporting 
documentation, and that the name of ETH not be used in advertising or 
publicity pertaining to distribution of the software without 
specific, written prior permission.

ETH disclaims all warranties with regard to this software, including 
all implied special, indirect or consequential damages or any damages 
whatsoever resulting from loss of use, data or profits, whether in an 
action of contract, negligence or other tortious action, arising out 
of or in connection with the use or performance of this software.

Oberon, Gadgets, Native Oberon, Oberon System 3, ETH Oberon and ETH PlugIn 
Oberon are trademarks of the Swiss Federal Institute of Technology Zurich.
Microsoft, MS, MS-DOS, NT, Win32, Win32s, Windows, Windows 95, Windows 98, 
Windows NT and Windows 2000 are trademarks of Microsoft Corporation.
IBM and OS/2 are trademarks of IBM Corporation.
Intel and Pentium are trademarks of Intel Corporation.
