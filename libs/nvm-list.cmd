@echo off
setlocal

if "%2" == "--help" (
	echo Usage: nvm list
	echo.
	echo List all NodeJS versions found in "%1\versions\*"
	exit /b
)

set versions_path=%1\versions

if exist %versions_path% (
	echo All NodeJS versions:
	dir "%versions_path%" /b /o:gn
) else (
	echo Node Version Manager was not found any NodeJS versions
)
