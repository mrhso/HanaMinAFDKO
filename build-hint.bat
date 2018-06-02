@echo off

perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinA.raw > HanaMinA.hinted.raw
autohint -r -q HanaMinA.hinted.raw
makeotf -newNameID4 -mf HanaMinA.fmndb -cs 1 -ci HanaMinA.ivs -ch HanaMinA.cmap -f HanaMinA.hinted.raw -ff HanaMinA.features -o HanaMinA-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinB.raw > HanaMinB.hinted.raw
autohint -r -q HanaMinB.hinted.raw
makeotf -newNameID4 -mf HanaMinB.fmndb -cs 1 -ci HanaMinB.ivs -ch HanaMinB.cmap -f HanaMinB.hinted.raw -ff HanaMinB.features -o HanaMinB-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinC.raw > HanaMinC.hinted.raw
autohint -r -q HanaMinC.hinted.raw
makeotf -newNameID4 -mf HanaMinC.fmndb -cs 1 -ci HanaMinC.ivs -ch HanaMinC.cmap -f HanaMinC.hinted.raw -ff HanaMinC.features -o HanaMinC-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinI.raw > HanaMinI.hinted.raw
autohint -r -q HanaMinI.hinted.raw
makeotf -newNameID4 -mf HanaMinI.fmndb -cs 1 -ci HanaMinI.ivs -ch HanaMinI.cmap -f HanaMinI.hinted.raw -ff HanaMinI.features -o HanaMinI-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinExA1.raw > HanaMinExA1.hinted.raw
autohint -r -q HanaMinExA1.hinted.raw
makeotf -newNameID4 -mf HanaMinExA1.fmndb -cs 1 -ci HanaMinExA1.ivs -ch HanaMinExA1.cmap -f HanaMinExA1.hinted.raw -ff HanaMinExA1.features -o HanaMinExA1-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinExA2.raw > HanaMinExA2.hinted.raw
autohint -r -q HanaMinExA2.hinted.raw
makeotf -newNameID4 -mf HanaMinExA2.fmndb -cs 1 -ci HanaMinExA2.ivs -ch HanaMinExA2.cmap -f HanaMinExA2.hinted.raw -ff HanaMinExA2.features -o HanaMinExA2-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinExB.raw > HanaMinExB.hinted.raw
autohint -r -q HanaMinExB.hinted.raw
makeotf -newNameID4 -mf HanaMinExB.fmndb -cs 1 -ci HanaMinExB.ivs -ch HanaMinExB.cmap -f HanaMinExB.hinted.raw -ff HanaMinExB.features -o HanaMinExB-Hinted.otf
perl %ADOBE_PERL%\hintcidfont.pl hintparam.txt < HanaMinExC.raw > HanaMinExC.hinted.raw
autohint -r -q HanaMinExC.hinted.raw
makeotf -newNameID4 -mf HanaMinExC.fmndb -cs 1 -ci HanaMinExC.ivs -ch HanaMinExC.cmap -f HanaMinExC.hinted.raw -ff HanaMinExC.features -o HanaMinExC-Hinted.otf
