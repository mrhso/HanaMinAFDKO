@echo off

setlocal

if not defined ADOBE_PERL set ADOBE_PERL=%CD%\perl-scripts
echo ADOBE_PERL=%ADOBE_PERL%
echo.

set PATH=C:\Python27-x64;C:\Perl64\site\bin;C:\Perl64\bin;C:\MinGW\msys\1.0\bin;%PATH%
echo PATH=%PATH%
echo.

unxz HanaMinA.svg.xz
tx -t1 HanaMinA.svg HanaMinA.pfa >>HanaMinA.log 2>>HanaMinA.err
mergeFonts -cid HanaMinA.cidinfo HanaMinA.raw HanaMinA.cidmap HanaMinA.pfa >>HanaMinA.log 2>>HanaMinA.err
unxz HanaMinB.svg.xz
tx -t1 HanaMinB.svg HanaMinB.pfa >>HanaMinB.log 2>>HanaMinB.err
mergeFonts -cid HanaMinB.cidinfo HanaMinB.raw HanaMinB.cidmap HanaMinB.pfa >>HanaMinB.log 2>>HanaMinB.err
unxz HanaMinC.svg.xz
tx -t1 HanaMinC.svg HanaMinC.pfa >>HanaMinC.log 2>>HanaMinC.err
mergeFonts -cid HanaMinC.cidinfo HanaMinC.raw HanaMinC.cidmap HanaMinC.pfa >>HanaMinC.log 2>>HanaMinC.err
unxz HanaMinI.svg.xz
tx -t1 HanaMinI.svg HanaMinI.pfa >>HanaMinI.log 2>>HanaMinI.err
mergeFonts -cid HanaMinI.cidinfo HanaMinI.raw HanaMinI.cidmap HanaMinI.pfa >>HanaMinI.log 2>>HanaMinI.err
unxz HanaMinExA1.svg.xz
tx -t1 HanaMinExA1.svg HanaMinExA1.pfa >>HanaMinExA1.log 2>>HanaMinExA1.err
mergeFonts -cid HanaMinExA1.cidinfo HanaMinExA1.raw HanaMinExA1.cidmap HanaMinExA1.pfa >>HanaMinExA1.log 2>>HanaMinExA1.err
unxz HanaMinExA2.svg.xz
tx -t1 HanaMinExA2.svg HanaMinExA2.pfa >>HanaMinExA2.log 2>>HanaMinExA2.err
mergeFonts -cid HanaMinExA2.cidinfo HanaMinExA2.raw HanaMinExA2.cidmap HanaMinExA2.pfa >>HanaMinExA2.log 2>>HanaMinExA2.err
unxz HanaMinExB.svg.xz
tx -t1 HanaMinExB.svg HanaMinExB.pfa >>HanaMinExB.log 2>>HanaMinExB.err
mergeFonts -cid HanaMinExB.cidinfo HanaMinExB.raw HanaMinExB.cidmap HanaMinExB.pfa >>HanaMinExB.log 2>>HanaMinExB.err
unxz HanaMinExC.svg.xz
tx -t1 HanaMinExC.svg HanaMinExC.pfa >>HanaMinExC.log 2>>HanaMinExC.err
mergeFonts -cid HanaMinExC.cidinfo HanaMinExC.raw HanaMinExC.cidmap HanaMinExC.pfa >>HanaMinExC.log 2>>HanaMinExC.err

echo Building HanaMinAFDKO...
echo.
call build-nohint.bat
echo Building HanaMinAFDKO-Hinted...
echo.
call build-hint.bat
