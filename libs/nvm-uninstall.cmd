@echo off
setlocal

if "%1" == "--help" (
	echo Usage: nvm uninstall ^<version^>
	echo.
	echo Attempt to uninstall the specific NodeJS version
	echo If the version does not exist, do not display an error message
	echo Use "nvm list" command to list all installed NodeJS versions
	exit /b
)

set version_path=%1\versions\%2

if exist %version_path% (
	rmdir /s %version_path%
	echo Uninstalled NodeJS %2 successfully
) else (
	echo NodeJS %2 is not found
)

set current_file_path=%home_path%\current.txt
for /f %%v in ('type %current_file_path%') do set version=%%v

if "%2" == "%version%" (
	reg delete HKCU\Environment /f /v NVM_CURRENT
	del %current_file_path%
)
