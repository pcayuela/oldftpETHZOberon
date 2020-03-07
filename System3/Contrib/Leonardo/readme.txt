This directory contains the latest releases of Leonardo, the 2D graphics
editor for ETHOberon, and Vinci, a graphical description language. Both
rely on the Gfx package in ../Gfx

Files
Leonardo201.Arc             Leonardo release 2.01
Leonardo201.tar.gz

LeoLegacy100.Arc             modules for importing figures created by previous
                             Leonardo releases (optional)
LeoLegacy100.tar.gz

Vinci102.Arc                 Vinci release 1.02
Vinci102.tar.gz

Recent changes
22.06.2000 (Leonardo 2.01, Vinci 1.02)
- made LeoFrames.Color() more careful in accepting positive values
- LeoPanels
  - EditLayers: don't open layer panel if no figure found
  - SelectionToLayer: check for empty selection
- LeoPanels.FindFrame uses Oberon.MarkedFrame to be compatible with
  new Windows Oberon
- LeoTools: fixed invalid rotations in CalcMatrix (found by ejz)
- VinciGadgets
  - frames display even if they have no model or model is empty
  - fixed small bug in handler (CopyMsg)
- VinciShapes: added name parameters, shapes.name; return shape
  name for "Item" attribute
- VinciEditors: derive inspector title from shape's "Item" attribute
- new sample description with Oberon logo

18.05.2000 (Vinci 1.01)
- Vinci: fixed Factor() to accept another Factor after "~"
- Scheme: fixed port objects not having type
- SchemeOps: minor bug fixes and improvements with I/O functions

