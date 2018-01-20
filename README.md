Hanazono Mincho (HanaMin) Font AFDKO version
=============================

## Overview

This is an [AFDKO](http://www.adobe.com/devnet/opentype/afdko.html)
version of [Hanazono Mincho](https://fonts.jp/) Fonts, covering *ALL*
CJK Unified and Compatibility Idegraphs up to Extension G (ISO/IEC
10646:2017) and IVD 2017-12-12.

## Download

Pre-built fonts can be download from
[releases page](http://github.com/cjkvi/HanaMinAFDKO/releases).

## Description

This prototypical version of Hanazono Mincho is created from
[GlyphWiki](http://glyphwiki.org/) data. This font is created by
AFDKO, and covers entire CJK Unified Ideographs, Compatibility
Ideographs, Kanji and Kana characters, and other CJK Related
ideographs and related characters.

1. CJK Unified Ideograph URO (U+4E00 to U+9FFF)
2. CJK Unified Ideograph Extension-A (U+3400 to U+4DFF)
3. CJK Unified Ideograph Extension-B,C,D,E,F (U+20000 to U+2EBE0)
4. CJK Compabilitiy Ideographs (U+F900 to U+FAD9)
5. CJK Compabilitiy Ideographs Supplement (U+2F800 to U+2FA1D)
6. Ideographic Variations (Adobe-Japan1, Hanyo-Denshi, etc)
7. Standard Variations
8. Kana, Kanbun, related punctuations and their vertical forms.
9. Localized glyphs for specific Asian regions.
10. Ligatures, etc.

It consists of three fonts, HanaMinA HanaMinB and HanaMinC, which
covers BMP, Extension B and the rest Ideographs respectively. For
details of supported features, you can use "spot -Proof" command in
AFDKO toolkit.

### Font Families

There are currently three font families.

1. Hanazono Mincho A :: This mainly covers BMP Ideographs.
2. Hanazono Mincho B :: This mainly covers Extension B Ideographs.
3. Hanazono Mincho C :: This mainly covers Extension C to up and SIP Compatibility Ideographs.
<!--
3. Hanazono Mincho AX :: This is an extended version of Hanazono
   Mincho A, supporting GlyphWiki *uXXXX-itaiji-YYY*, *uXXXX-YY* and
   *kumimoji-XXXX* glyphs by using OpenType GSUB features "trad",
   "ssXX" and "ccmp" features.
4. Hanazono Mincho BX :: This is an extended version of Hanazono
   Mincho B.
-->

## Sample Screenshot

![sample](https://cloud.githubusercontent.com/assets/217020/3786962/fa5527bc-19ef-11e4-83b2-bf14a32602e2.png)

## VS.

### Hanazono Mincho (original version)

Original Hanazono Mincho Font is generated by
[FontForge](http://fontforge.org/), and is TrueType-based. On the
other hand, this font is created by AFDKO, and is CFF-based.

## Supported Systems

Included fonts have been confirmed to work properly with Windows,
Macintosh and Linux.

## Install

This repository provides pre-built data for the font. Glyph data is
provided as compressed
[SVG Font](https://www.w3.org/TR/SVG/fonts.html)
format. This is due to the limitation of GitHub to accept only less
than 100M byte file size. (Uncompressed glyph data would exceed 120M
bytes.) To examine actual glyph data, you can convert the data to
[UFO](http://unifiedfontobject.org/), PDF or
[SVG Font](http://www.w3.org/TR/SVG/fonts.html) format by AFDKO *tx*
command.

To build the fonts, you need to install newest AFDKO from github (as
of Jan. 2018). For perl scripts, you still need to specify the proper
git directory to $AFDKO variable, such as
"$HOME/.ghq/github.com/adobe-type-tools/afdko/afdko/Tools/SharedData/FDKScripts/".

Then, run the following commands to create the fonts. (Please keep in
mind that it may take long time to build the fonts.)

    unxz HanaMinA.svg.xz
    tx -t1 HanaMinA.svg HanaMinA.pfa >>HanaMinA.log 2>>HanaMinA.err
    mergeFonts -cid HanaMinA.cidinfo HanaMinA.raw HanaMinA.cidmap HanaMinA.pfa >>HanaMinA.log 2>>HanaMinA.err
    checkOutlines -e -k -O -x HanaMinA.pfa >/dev/null 2>>HanaMinA.err
    perl $AFDKO/hintcidfont.pl hintparam.txt < HanaMinA.raw > HanaMinA.hinted.raw
    autohint -r -q HanaMinA.hinted.raw
    makeotf -newNameID4 -mf HanaMinA.fmndb -cs 1 -ci HanaMinA.ivs -ch HanaMinA.cmap \
        -f HanaMinA.hinted.raw -ff HanaMinA.features -o HanaMinA.otf


HanaMinB, HanaMinC can also be created like the above operations.
<!--
HanaMinAX, HanaMinBX can also be created like the above operations.
-->

## Contribution

These data are created by
[glyphwiki-afdko](http://github.com/kawabata/glyphwiki-afdko) tools.
If you have any problems, please post issues there.

## Licence

License follows [GlyphWiki license](http://glyphwiki.org/license.html).

## Author

- [kawabata](https://github.com/kawabata)
