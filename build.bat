@echo off

setlocal

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
