@echo off

setlocal

if not defined HanaMinAFDKO_Root set HanaMinAFDKO_Root=%CD%
echo HanaMinAFDKO_Root=%HanaMinAFDKO_Root%
echo.

if not defined max-old-space-size set max-old-space-size=3072
echo max-old-space-size=%max-old-space-size%
echo.

set PATH=C:\MinGW\msys\1.0\bin;%CD%\otfcc\release-x64;%PATH%
echo PATH=%PATH%
echo.

echo Building Raw...
echo.
call build-raw.bat
echo Building CID-based...
echo.
call build-cid.bat
echo Building TrueType...
echo.
call build-tt.bat
