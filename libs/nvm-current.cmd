@echo off
setlocal

if "%2" == "--help" (
	echo Usage: nvm current
	echo.
	echo Shows the currently selected NodeJS version and how it was selected
	exit /b
)

if "%NVM_CURRENT%" == "" (
	echo Current NodeJS version is not set
	echo Set the current NodeJS version by "nvm use" command
) else (
	echo NodeJS %NVM_CURRENT%
	echo NodeJS home path is %1\versions\%NVM_CURRENT%
)
