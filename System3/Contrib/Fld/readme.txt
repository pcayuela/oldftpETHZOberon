From:	fld@informatik.uni-bremen.de
Date:	Wed, 9 Feb 2000 15:01:20 +0100 (MET)
To:	muller@inf.ethz.ch

Hi Pieter,

...
	In the source tree I have moved all NO sources which got modi-
fications not forced by system dependencies into the sub directory 
'fld'. The files are:

	GIF.Mod:	
		computes right color maps mow.
	
	PPM.Mod:	
		fixed 2 bugs. the first prevented skipping of comment lines. the 
		second one was related to color map creation.
	
	XMB.Mod:	
		removed the initializaton of picture.address. The address field 
		belongs to the NT and NO version and is not portable.
						
	Scrollbars.Mod:
		- one minor bug in procedure 'SetValue'.
		- procedure 'RestoreFrame' caused flicker. This could not be seen 
		   when the srollbars had only small sizes, but I now use them to 
		   browse though texts.
		   
	TextGadgets.Mod
	TextTextGadgets0.Mod
	TextSBControl.Mod:
		- TextGadgets use Srollbars now.
		- as the MM button gets forwarded to the Scrollbar Gadget the
		   MM, ML and MM, MR interclicks have been replaced by
		   ML, MM and MR, MM.
		- TextSBControl belongs to TextGadgeds0 but had to be separated
		   because of the 64K code size limit of the PPC compiler.
		- The Srollbars can be placed at the right side of the viewers by an
		   apropriate entry in Oberon.Text.
...

-- Guenter
