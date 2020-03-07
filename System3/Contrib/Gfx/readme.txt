This directory contains the latest releases of Gfx, the high-level graphics
library for Oberon System 3. Files ending in .Arc are Oberon archive files
created by the Compress utility.

Files

readme.txt             this file
Gfx174.Arc             Gfx 1.74 source and documentation in Oberon archive
Gfx174.tar.gz          Gfx 1.74 source and documentation in gzipped tar file
GfxOverview.html       introduces concepts and interface of Gfx
GfxHowto.html          how to use Gfx in practice

Recent Changes
22.06.2000 (release 1.74)
- GfxImages: fixed bug in SkewRows/SkewCols that used wrong width/height
  for clipped rows/cols (found by pjm)
- GfxPaths: fixed bug in EnumBezier.draw: used xy11 as midpoint of Bezier
  instead of xy12
- GfxOType: fixed bug in Open (ignored style)
10.05.2000 (release 1.73)
- bugfixes in GfxBuffer.Rect and GfxPaths.solve
26.04.2000 (release 1.72)
- bugfixes in GfxRaster.Arc, GfxPrinter.Show, GfxFonts0
- new function Atan2 in GfxMatrix
- new wildcard conventions for GfxFonts extensions
- changed default flatness to 0.5 pixels
27.03.2000 (release 1.71)
- bugfixes in GfxPS
24.03.2000 (release 1.70)
- Gfx now includes GfxPKFonts
- changes in Gfx interface: clip areas, save and restore state, arc wrapper
- bugfixes in GfxPaths, GfxMatrix.Scaled, GfxRaster.HairCircle, GfxPS.Arc
- improvements in GfxFonts0, GfxFonts, GfxPaths.EnumBezier, GfxPS

