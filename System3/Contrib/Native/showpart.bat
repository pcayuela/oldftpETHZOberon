@echo off
echo Creating program...
set t=showpart.$$$
echo r ax>%T%
echo 0201>>%T%
echo r bx>>%T%
echo 0200>>%T%
echo r cx>>%T%
echo 0001>>%T%
echo r dx>>%T%
echo 0080>>%T%
echo e 0100>>%T%
echo cd 13 90>>%T%
echo r>>%T%
echo p>>%T%
echo d 0200L0200>>%T%
echo q>>%T%
echo Running...
debug <%T% >showpart.out
del %T% >nul
echo Finished -- output in showpart.out
