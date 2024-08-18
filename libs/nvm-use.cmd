@echo off
setlocal

if "%2" == "--help" (
	echo Usage: nvm use ^<version^>
	echo.
	echo Set the current NodeJS version
	exit /b
)

set version_path=%1\versions\%2

if exist %version_path% (
	setx NVM_CURRENT %2
	echo Now using NodeJS %2
) else (
	echo NodeJS %2 was not found
)
