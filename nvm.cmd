@echo off
setlocal

if "%1" == "" (
	call :plugin help %2
) else if "%1" == "--help" (
	call :plugin help %2
) else (
	call :plugin %1 %2
)

exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: execute nvm command
:plugin
set exec=%~dp0.\libs\nvm-%1
call :normalizepath %exec% exec

set home_path=%~dp0.

if "%NVM_HOME%" == "" (
	echo NVM_HOME environment variable is not set
) else (
	set home_path=%NVM_HOME%
)

if exist %exec%.cmd (
	call %exec%.cmd %home_path% %2
) else if exist %exec%.bat (
	call %exec%.bat %home_path% %2
) else (
	echo Node Version Manager do not have "%1" command
)

goto :eof

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: convert path which may have relative nodes (.. or .) to its absolute value so can be used in PATH
:normalizepath
set %~2=%~dpf1

goto :eof
