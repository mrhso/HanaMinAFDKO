@echo off

otfccdump HanaMinA.otf | otfcc-c2q | otfccbuild -o HanaMinA.ttf
otfccdump HanaMinB.otf | otfcc-c2q | otfccbuild -o HanaMinB.ttf
otfccdump HanaMinC.otf | otfcc-c2q | otfccbuild -o HanaMinC.ttf
otfccdump HanaMinI.otf | otfcc-c2q | otfccbuild -o HanaMinI.ttf
otfccdump HanaMinExA1.otf | otfcc-c2q | otfccbuild -o HanaMinExA1.ttf
otfccdump HanaMinExA2.otf | otfcc-c2q | otfccbuild -o HanaMinExA2.ttf
otfccdump HanaMinExB.otf | otfcc-c2q | otfccbuild -o HanaMinExB.ttf
otfccdump HanaMinExC.otf | otfcc-c2q | otfccbuild -o HanaMinExC.ttf
