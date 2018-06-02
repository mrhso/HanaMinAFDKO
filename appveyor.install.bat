setlocal

set PATH=C:\MinGW\msys\1.0\bin;%PATH%
set OTFCC_ZIP=https://img.vim-cn.com/70/9ef4472faa2773fa29aefa19d0303063f7cc5f.zip
set OTFCC_VER=0.10.3

curl -o otfcc-win64-%OTFCC_VER%.zip %OTFCC_ZIP%
unzip -d otfcc otfcc-win64-%OTFCC_VER%.zip
pip install afdko
npm install -g otfcc-c2q
