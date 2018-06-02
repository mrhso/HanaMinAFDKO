setlocal

set nocache=0
set PATH=C:\Python27-x64;C:\Python27-x64\Scripts;%PATH%
set AFDKO_WHL=https://img.vim-cn.com/d7/9810f51343527feda6e1eb5cac5a82bb806771.zip
set AFDKO_VER=2.7.1rc0

if not exist afdko.cached set nocache=1
if not exist C:\Python27-x64 set nocache=1

choco install activeperl
git submodule init
git submodule update perl-scripts

if %nocache% == 1 (
	curl -o afdko-%AFDKO_VER%-cp27-cp27m-win_amd64.whl %AFDKO_WHL%
	pip install afdko-%AFDKO_VER%-cp27-cp27m-win_amd64.whl
	date /t > afdko.cached & time /t >> afdko.cached
	echo.
	echo AFDKO installed.
	echo.
	goto EXIT
) else (
	echo.
	echo Last build date of cache is
	type afdko.cached
	echo.
	goto EXIT
)

:EXIT
exit /b %EXITCODE%
