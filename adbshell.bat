@ECHO OFF

SETLOCAL

SET CDir=%~dp0%

SET PATH=%PATH%;%CDir%
TITLE ADB shell

:: Output help
:: In fact, it is just "%cmd shortcut% = %cmd action%" where %cmd action% is the whole
:: contents of the corresponding batch file
:: There's some voodoo magic to make echo print a line without CRLF
:: © http://www.devtrends.com/index.php/echo-without-carriage-return-or-line-feed-cr-lf/
IF .%1%.==./?. (
	ECHO ADB shell. Shorthand commands available:
	FOR %%F IN ("%CDir%\*.bat") DO (
		IF NOT %%~nF==%~n0% (
			(ECHO.|SET /p = * %%~nF = ) & (TYPE "%%F") & (ECHO.)
		)
	)
	GOTO :EOF
)

:: Otherwise, execute new instance of shell and start ADB daemon
CALL cmd /k adb.exe start-server