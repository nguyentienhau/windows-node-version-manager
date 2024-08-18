@echo off
setlocal

if "%1" == "--help" (
	echo Usage: nvm install ^<version^>
	echo.
	echo Attempt to install the specific NodeJS version
	echo If the version does not exist, do not display an error message
	echo Use "nvm list available" command to list all NodeJS versions can install
	exit /b
)

set version_path=%1\versions\%2

if exist %version_path% (
	echo NodeJS %2 has been installed
	exit /b
)

set prev_path=%cd%
set zip_name=node-v%2-win-x64
set nodejs_url=https://nodejs.org/download/release/v%2/%zip_name%.zip

if not exist %1\versions (
	mkdir %1\versions
)

cd /d %1\versions
curl %nodejs_url% -OJL
tar -xvf %zip_name%.zip
rename %zip_name% %2
del %zip_name%.zip
cd /d %prev_path%

echo NodeJS %2 has been installed successfully

