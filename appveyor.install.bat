setlocal

set nocache=0

if not exist afdko.cached set nocache=1
if not exist C:\Python27-x64 set nocache=1

git submodule init
git submodule update perl-scripts

if %nocache% == 1 (
	pip install afdko
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
