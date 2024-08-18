@echo off

if "%1" == "--help" (
	echo Usage: nvm commands
	echo.
	echo List all available nvm commands
	exit /b
)

echo Some useful nvm commands are:
echo     on         Turn on Node Version Manager
echo     off        Turn off Node Version Manager
echo     help       Show help screen
echo     commands   List all available nvm commands
echo     version    Show the current Node Version Manager version and its origin
echo     install    Install the specific NodeJS version
echo     uninstall  Uninstall the specific NodeJS version
echo     list       List all installed NodeJS versions in Node Version Manager
echo     use        Set or show the current NodeJS version
echo     current    Show the current NodeJS version and its origin
