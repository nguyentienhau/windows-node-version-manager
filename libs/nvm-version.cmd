@echo off
setlocal

if "%2" == "--help" (
	echo Usage: nvm version
	echo.
	echo Displays the version number of this nvm release
	exit /b
)

echo Node Version Manager 1.1.2
echo Node Version Manager home path is %1

