This directory contains sources of a small library for managing and
manipulating raster images.

Images103.Arc        Oberon archive (open with Compress.Directory)
Images103.tar.gz     gnuzipped tar file

Recent changes:
22.06.2000 (release 1.03)
- Images
  - fixed bug in AnyToBGR888 and BGR888ToAny (didn't use bit address
    for "any" format)
  - added AnyOverBGRA8888 (bug in Bind)
- ImageGadgets.RestoreRuns: fixed infinite loop with transparent images;
  improved transparency handling
10.05.2000 (release 1.02)
- ColorGadgets: avoid losing hue value when tracking wedge
  (suggested by pjm)
26.04.2000 (release 1.01)
- bugfix in ImageGadgets.PrintRect: didn't handle transparency well
