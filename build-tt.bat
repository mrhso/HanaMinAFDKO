@echo off

otfccdump HanaMinA.otf -o HanaMinA.otd
call otfcc-c2q < HanaMinA.otd > HanaMinA.ttd
otfccbuild HanaMinA.ttd -o HanaMinA.ttf
otfccdump HanaMinB.otf -o HanaMinB.otd
call otfcc-c2q < HanaMinB.otd > HanaMinB.ttd
otfccbuild HanaMinB.ttd -o HanaMinB.ttf
otfccdump HanaMinC.otf -o HanaMinC.otd
call otfcc-c2q < HanaMinC.otd > HanaMinC.ttd
otfccbuild HanaMinC.ttd -o HanaMinC.ttf
otfccdump HanaMinI.otf -o HanaMinI.otd
call otfcc-c2q < HanaMinI.otd > HanaMinI.ttd
otfccbuild HanaMinI.ttd -o HanaMinI.ttf
otfccdump HanaMinExA1.otf -o HanaMinExA1.otd
call otfcc-c2q < HanaMinExA1.otd > HanaMinExA1.ttd
otfccbuild HanaMinExA1.ttd -o HanaMinExA1.ttf
otfccdump HanaMinExA2.otf -o HanaMinExA2.otd
call otfcc-c2q < HanaMinExA2.otd > HanaMinExA2.ttd
otfccbuild HanaMinExA2.ttd -o HanaMinExA2.ttf
otfccdump HanaMinExB.otf -o HanaMinExB.otd
call otfcc-c2q < HanaMinExB.otd > HanaMinExB.ttd
otfccbuild HanaMinExB.ttd -o HanaMinExB.ttf
otfccdump HanaMinExC.otf -o HanaMinExC.otd
call otfcc-c2q < HanaMinExC.otd > HanaMinExC.ttd
otfccbuild HanaMinExC.ttd -o HanaMinExC.ttf
