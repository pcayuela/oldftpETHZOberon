Native Oberon TeX Distribution (Work in progress)

TeX was ported to Oberon by Edward Muller <edward@mosaic.co.za>.
http://www.cs.sun.ac.za/projects/oberon/TeX/

All the files of the tetex TeX distribution were copied to Oberon Arc 
files by Alan Freed <alfreed@ohio.net>.

To try out TeX, you need a Native Oberon 2.3.4b installation with
about 80Mb free disk space.  A smaller distribution will be made 
available later.

1. Download TeXBetaApr9.Arc and TeXDistribution.Tool into 
your Native Oberon system (use binary mode!).

For example:
  FTPTool.Open ftp.inf.ethz.ch ~
  FTPTool.ChangeDir "/pub/Oberon/System3/Contrib/TeX/"
  FTPTool.GetFiles TeXBetaApr9.Arc TeXDistribution.Tool ~
  FTPTool.Close

2. CompressTools.ExtractAll TeXBetaApr9.Arc ~

3. Use TeXDistribution.Tool to FTP the rest of TeX.  If you 
do not have network access in Native Oberon, use another OS
to ftp the files to a FAT16 partition on the same computer 
and use the DOS.CopyFrom command in the distribution tool 
to copy the files.

-- Pieter Muller <muller@inf.ethz.ch>
