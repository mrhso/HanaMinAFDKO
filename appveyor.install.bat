setlocal

set PATH=C:\MinGW\msys\1.0\bin;%PATH%
if not defined OTFCC_ZIP set OTFCC_ZIP=https://img.vim-cn.com/70/9ef4472faa2773fa29aefa19d0303063f7cc5f.zip
if not defined OTFCC_VER set OTFCC_VER=0.10.3
if not defined HanaMinAFDKO_Root set HanaMinAFDKO_Root=%CD%

pip install afdko
curl -o otfcc-win64-%OTFCC_VER%.zip %OTFCC_ZIP%
unzip -d otfcc otfcc-win64-%OTFCC_VER%.zip
cd %HanaMinAFDKO_Root%\otfcc-c2q
call npm install
cd %HanaMinAFDKO_Root%
