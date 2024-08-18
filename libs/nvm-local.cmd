@echo off
setlocal

if "%1" == "--help" (
	echo Usage: nvm local ^<version^> ^<version2^> ^<..^>
	echo        nvm local --unset
	echo.
	echo Sets the local application-specific NodeJS version
	echo by writing the version name to a file named ".python-version".
	echo.
	echo When you run a NodeJS command, nvm will look for a ".python-version" file
	echo in the current directory and each parent directory.
	echo If no such file is found in the tree, nvm will use the global NodeJS version
	echo specified with "nvm global".
	echo A version specified with the "NVM_VERSION" environment variable
	echo takes precedence over local and global versions.
	echo.
	echo ^<version^> can be specified multiple times and should be a version tag known to nvm.
	echo The special version string "system" will use your default system NodeJS.
	echo Run "nvm list" for a list of available NodeJS versions.
	echo.
	echo Example: To enable the python2.7 and python3.7 shims to find their respective executables
	echo          you could set both versions with:
	echo.
	echo "nvm local 3.7.0 2.7.15"
	exit /b
)

echo %NVM_HOME%
